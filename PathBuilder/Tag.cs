using System.Xml;

namespace PathBuilder
{
    public class Tag :XmlConfigItem , ITag
    {
        public string Name { get; set; }
        public object TagName { get; set; }
        public override XmlElement Export(XmlDocument doc, XmlElement parent)
        {
            XmlElement current = base.Export(doc, parent);

            if (Name != null)
            {
                current.SetAttribute("NAME", Name);
            }

            if (TagName != null)
            {
                current.SetAttribute("TAG_NAME", TagName.ToString());
            }

            return current;
        }
    }
}