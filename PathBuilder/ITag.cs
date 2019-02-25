namespace PathBuilder
{
    public interface ITag: IXmlConfigItem
    {
        string Name { get; set; }
        object TagName { get; set; }
    }
}