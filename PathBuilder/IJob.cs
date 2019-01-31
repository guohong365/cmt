namespace PathBuilder
{
    public interface IJob:ITag 
    {
        IJob Parent { get; set; }
        string Name { get; set; }
        string Path { get; set; }

        
    }
}