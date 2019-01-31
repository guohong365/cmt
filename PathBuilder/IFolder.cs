using System.Collections.Generic;

namespace PathBuilder
{
    public interface IFolder : IJob
    {
        ICollection<IJob> SubItems { get; }

        void Add(IJob job);
    }
}