using System.Xml;

namespace PathBuilder
{
    public interface IXmlConfigItem
    {
        string XmlTagName { get; set; }
        XmlElement Export(XmlDocument doc, XmlElement parent);
    }

    public class XmlConfigItem : IXmlConfigItem
    {
        public virtual XmlElement Export(XmlDocument doc, XmlElement parent)
        {
            XmlElement current = doc.CreateElement(XmlTagName);
            parent.AppendChild(current);
            return current;
        }

        public string XmlTagName { get; set; }
    }
}


