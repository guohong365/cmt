using System.Collections.Generic;
using System.Xml;

namespace PathBuilder
{
    public class SubFolder :Job, ISubFolder
    {
        public SubFolder():this("")
        {
        }

        public ICollection<IJob> SubItems { get; private set; }
        public void Add(IJob job)
        {
            SubItems.Add(job);
            job.Parent = this;
        }
        public SubFolder(string name)
            : base(name)
        {
            SubItems = new List<IJob>();
            XmlTagName = "SUB_FOLDER";
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
