using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml ;
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

            buildFolders(jobs );

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
        private static IFolder FindItem(ICollection<IJob> items, string name)
        {
            foreach (IJob item in items )
            {
                if(item is IFolder && item.Name.Equals(name))
                {
                    return (IFolder)item;
                }
            }
            return null;
        }
        private static IFolder CreateFullPath(IFolder parent, string[] paths, int begin)
        {
            IFolder top=parent;
            if (top == null) 
            {
                top = new Folder(paths[begin]);
                begin++;
            }            
            for (int i = begin; i < paths.Length; i++)
            {
                IFolder current = new Folder(paths[i]);
                top.Add(current);
                top = current;
            }
            return top;           
        }

        private static IFolder FindSubItem(IFolder parent, string[] paths, int begin)
        {
            IFolder subItem;
            IFolder current=parent;
            for(int i=begin ; i<paths.Length ; i++)
            {
                subItem= FindItem (current.SubItems , paths[i]);
                if (subItem == null)
                {
                    current = CreateFullPath(current, paths, i);
                    break;
                }
                current = subItem;
            }            
            return current;
        }

        private static  void buildFolders(Job[] jobs)
        {
            IFolder top;
            IFolder last;
            IJob  job;

            foreach (IJob item in jobs  )
            {
                string [] paths =item.Path.Split('/');

                top = FindItem(roots, paths[0]);
                if (top ==null)
                {
                    last = CreateFullPath(null, paths, 0);
                    job = last;

                    while (job.Parent != null) job = job.Parent;
                    roots.Add(job);
                }
                else
                {
                    last=FindSubItem(top, paths, 1);
                }
                last.Add(item);
            }

        }
    }
}
