using System.Xml;

namespace PathBuilder
{
    public class Job :Tag , IJob
    {
        public IJob Parent { get; set; }
        public string Name { get; set; }
        public string Path { get; set; }

        public Job()
            :this("")
        {
        }

        public Job(string name)
            :this(name , "")
        {
        }
        public Job(string name, string path)
        {
            TagName = "JOB";
            Name = name;
            Path = path;
        }

        public override XmlElement Export(XmlDocument doc, XmlElement parent)
        {
            XmlElement current=base.Export(doc, parent);
            current.SetAttribute("NAME", Name);
            current.SetAttribute("PATH", Path);
            return current;
        }
    }
}