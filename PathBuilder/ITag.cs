using System.Xml;

namespace PathBuilder
{
    public interface ITag
    {
        string TagName { get; set; }
        XmlElement Export(XmlDocument doc, XmlElement parent);
    }
}