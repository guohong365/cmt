using System.Collections.ObjectModel;

namespace CTM
{
    public class SubTable :JobData
    {
        public Collection<JobData> JOB;
        public Collection<SubTable> SUB_TABLE;
    }
}