using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace PathBuilder
{
    public class Folder : Job, IFolder
    {
        public Folder():this("")
        {
        }

        public ICollection<IJob> SubItems { get; private set; }
        public void Add(IJob job)
        {
            SubItems.Add(job);
            job.Parent = this;
        }
        public Folder(string name):base(name)
        {
            SubItems = new List<IJob>();
            TagName = "SUB_FOLDER";
        }

        public override XmlElement Export(XmlDocument doc, XmlElement parent)
        {
            XmlElement current = base.Export(doc, parent);

            foreach (var item in SubItems)
            {
                item.Export(doc, current);
            }

            return current;
        }
    }
}
