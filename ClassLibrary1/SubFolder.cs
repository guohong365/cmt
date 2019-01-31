using System.Collections.ObjectModel;

namespace CTM
{
    public class SubFolder : JobData
    {
        public Collection<JobData> JOB;
        public Collection<SubFolder> SUB_FOLDER;
    }
}