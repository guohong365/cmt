using System.Collections.ObjectModel;

namespace CTM
{
    public class OnData
    {
        public Collection<DoActionData> DO;
        public Collection<DoActionData> DO_TABLE;
        public Collection<DoActionData> DO_GROUP;
        public Collection<DoActionData> DOACTION;
        public Collection<DoActionData> ACTION;
        public Collection<DoCondData> DOCOND;
        public Collection<DoCtbRuleData> DOCTBRULE;
        public Collection<DoForceJobData> DOFORCEJOB;
        public Collection<DoIfRerunData> DOIFRERUN;
        public Collection<DoMailData> DOMAIL;
        public Collection<DoRemedyData> DOREMEDY;
        public Collection<SetVarData> DOAUTOEDIT2;
        public Collection<SetVarDataOld> DOAUTOEDIT;
        public Collection<SetVarData> DOVARIABLE;
        public Collection<DoShoutData> DOSHOUT;
        public Collection<DoSysoutData> DOOUTPUT;
        public Collection<DoSysoutData> DOSYSOUT;
        public string STMT;
        public string PGMS;
        public string PROCS;
        public string CODE;
        public string AND_OR;
        public string PATTERN;
        public string FROM_COLUMN;
        public string TO_COLUMN;
    }
}