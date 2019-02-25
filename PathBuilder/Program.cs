using System;
using System.Collections.Generic;
using System.Xml;

namespace PathBuilder
{


    class Program
    {
        static List<IJob> roots = new List<IJob>();
        static void Main(string[] args)
        {


            Job[] jobs = {
                              new Job ("DB_ODM_HIS_DATA", "ECIF/ODM/ODM_HIS"),
                              new Job ("DB_ODM_ADD_DATA", "ECIF/ODM/ODM_ADD"),
                              new Job ("DB_FDM_HIS_DATA", "ECIF/FDM/FDM_HIS"),
                              new Job ("DB_FDM_MAP_F_PUB_FAREN_INFO",   "ECIF/FDM/FDM_MAP/PUB"),
                              new Job ("DB_FDM_MAP_F_PUB_BRANCH_INFO",	"ECIF/FDM/FDM_MAP/PUB"),
                              new Job ("DB_FDM_MAP_F_PUB_EMPLOYEE_INFO", "ECIF/FDM/FDM_MAP/PUB"),
                              new Job ("DB_FDM_MAP_F_CI_CUSTOMER",	"ECIF/FDM/FDM_MAP/CI"),
                              new Job ("DB_FDM_MAP_F_CI_PERSON", "ECIF/FDM/FDM_MAP/CI"),
                              new Job ("DB_FDM_MAP_F_CI_ORG",   "ECIF/FDM/FDM_MAP/CI"),
                              new Job ("DB_FDM_MAP_F_CI_CROSSINDEX",    "ECIF/FDM/FDM_MAP/CI")
                          };

            BuildFolders(jobs );

            XmlDocument doc = new XmlDocument();
            XmlNode node= doc.CreateXmlDeclaration("1.0", "utf-8", "");
            doc.AppendChild(node);
            XmlElement root = doc.CreateElement("ROOT");
            doc.AppendChild(root);
            
            foreach( ITag tag in roots )
            {
                tag.Export (doc, doc.DocumentElement);
            }

            doc.Save ("F:/tt.xml");
        }
        private static ISubFolder FindItem(ICollection<IJob> items, string name)
        {
            foreach (IJob item in items)
            {
                var folder = item as ISubFolder;
                if (folder != null && Equals(folder.JobName, name))
                {
                    return folder;
                }
            }
            return null;
        }
        private static ISubFolder CreateFullPath(ISubFolder parent, string[] paths, int begin)
        {
            ISubFolder top = parent;
            if (top == null)
            {
                top = new SmartFolder(paths[begin]);
                begin++;
            }
            for (int i = begin; i < paths.Length; i++)
            {
                ISubFolder current = new SubFolder(paths[i]);
                top.Add(current);
                top = current;
            }
            return top;
        }

        private static ISubFolder FindSubItem(ISubFolder parent, string[] paths, int begin)
        {
            ISubFolder subItem;
            ISubFolder current = parent;
            for (int i = begin; i < paths.Length; i++)
            {
                subItem = FindItem(current.SubItems, paths[i]);
                if (subItem == null)
                {
                    current = CreateFullPath(current, paths, i);
                    break;
                }
                current = subItem;
            }
            return current;
        }

        private static void BuildFolders(Job[] jobs)
        {
            ISubFolder top;
            ISubFolder last;
            IJob job;

            foreach (IJob item in jobs)
            {
                string[] paths = item.ParentFolder.ToString().Split('/');
                top = FindItem(roots, paths[0]);
                if (top == null)
                {
                    last = CreateFullPath(null, paths, 0);
                    job = last;

                    while (job.Parent != null) job = job.Parent;
                    roots.Add(job);
                }
                else
                {
                    last = FindSubItem(top, paths, 1);
                }
                last.Add(item);
            }

        }
    }
}
