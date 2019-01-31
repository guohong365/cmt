using System.Xml;

namespace PathBuilder
{
    public class Tag :ITag {
        public virtual XmlElement Export(XmlDocument doc, XmlElement parent)
        {
            XmlElement current = doc.CreateElement(TagName);
            parent.AppendChild(current);
            return current;
        }

        public string TagName { get; set; }
    }
}