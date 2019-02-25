using System.Collections.ObjectModel;
using System.Xml;

namespace PathBuilder
{
    public class Job :TagData , IJob
    {
        public IJob Parent { get; set; }
        public Collection<IJobClientData> AdditionalJobDetails { get; private set; }
        public Collection<ISetVarData> AutoEdit2 { get; private set; }
        public Collection<ISetVarDataOld> AutoEdit { get; private set; }
        public Collection<ISetVarData> Variable { get; private set; }
        public Collection<IShoutData> Shout { get; private set; }
        public Collection<IControlResourceData> CONTROL { get; private set; }
        public Collection<IInConditionData> INCOND { get; private set; }
        public Collection<IQuantitativeResourceData> QUANTITATIVE { get; private set; }
        public Collection<IOutConditionData> OUTCOND { get; private set; }
        public Collection<IStepRangeData> STEP_RANGE { get; private set; }
        public Collection<ITagData> RULE_BASED_CALENDAR { get; private set; }
        public Collection<ITagData> TAG { get; private set; }
        public Collection<ITag> RULE_BASED_CALENDARS { get; private set; }
        public Collection<ITag> TAG_NAMES { get; private set; }
        public Collection<IOnData> ON { get; private set; }
        public Collection<IOnData> ON_TABLE { get; private set; }
        public Collection<IOnData> ON_GROUP { get; private set; }
        public Collection<ICaptureData> CAPTURE { get; private set; }
        public object JobIsn { get; set; }
        public object Application { get; set; }
        public object SubApplication { get; set; }
        public object Group { get; set; }
        public object MemName { get; set; }
        public object JobName { get; set; }
        public object Description { get; set; }
        public object CreatedBy { get; set; }
        public object Author { get; set; }
        public object RunAs { get; set; }
        public object Owner { get; set; }
        public object Priority { get; set; }
        public object Critical { get; set; }
        public object TaskType { get; set; }
        public object Cyclic { get; set; }
        public object NodeId { get; set; }
        public object DocLib { get; set; }
        public object DocMem { get; set; }
        public object Interval { get; set; }
        public object OverridePath { get; set; }
        public object OverLib { get; set; }
        public object MemLib { get; set; }
        public object CmdLine { get; set; }
        public object Confirm { get; set; }
        public object MaxRerun { get; set; }
        public object AutoArch { get; set; }
        public object MaxDays { get; set; }
        public object MaxRuns { get; set; }
        public object TimeFrom { get; set; }
        public object TimeTo { get; set; }
        public object RerunMem { get; set; }
        public object Category { get; set; }
        public object PdsName { get; set; }
        public object Minimum { get; set; }
        public object PreventNct2 { get; set; }
        public object Option { get; set; }
        public object From { get; set; }
        public object Par { get; set; }
        public object SysDb { get; set; }
        public object DueOut { get; set; }
        public object RetenDays { get; set; }
        public object RetenGen { get; set; }
        public object TaskClass { get; set; }
        public object PrevDay { get; set; }
        public object AdjustCond { get; set; }
        public object JobsInGroup { get; set; }
        public object LargeSize { get; set; }
        public object IndCyclic { get; set; }
        public object CreationUser { get; set; }
        public object CreationDate { get; set; }
        public object CreationTime { get; set; }
        public object ChangeUserid { get; set; }
        public object ChangeDate { get; set; }
        public object ChangeTime { get; set; }
        public object JobVersion { get; set; }
        public object RuleBasedCalendarRelationship { get; set; }
        public object TagRelationship { get; set; }
        public object Timezone { get; set; }
        public object ApplType { get; set; }
        public object ApplVer { get; set; }
        public object ApplForm { get; set; }
        public object CmVer { get; set; }
        public object MultyAgent { get; set; }
        public object SchedulingEnvironment { get; set; }
        public object SystemAffinity { get; set; }
        public object RequestNjeNode { get; set; }
        public object StatCal { get; set; }
        public object InstreamJcl { get; set; }
        public object UseInstreamJcl { get; set; }
        public object DueOutDaysoffset { get; set; }
        public object FromDaysoffset { get; set; }
        public object ToDaysoffset { get; set; }
        public object VersionOpcode { get; set; }
        public object IsCurrentVersion { get; set; }
        public object VersionSerial { get; set; }
        public object VersionHost { get; set; }
        public object CyclicIntervalSequence { get; set; }
        public object CyclicTimesSequence { get; set; }
        public object CyclicTolerance { get; set; }
        public object CyclicType { get; set; }
        public object ParentFolder { get; set; }
        public object ParentTable { get; set; }
        public object Odate { get; set; }
        public object Fprocs { get; set; }
        public object Tpgms { get; set; }
        public object Tprocs { get; set; }

        public Job()
            :this("", "")
        {
        }

        public Job(string name)
            : this(name, "")
        {
        }

        public Job(string name, string path)
        {
            XmlTagName = "JOB";
            JobName = name;
            ParentFolder = path;
        }

        public override XmlElement Export(XmlDocument doc, XmlElement parent)
        {
            XmlElement current=base.Export(doc, parent);
            if(JobName!=null) current.SetAttribute("JOBNAME", JobName.ToString());
            if (ParentFolder != null) current.SetAttribute("PARENT_FOLDER", ParentFolder.ToString());
            return current;
        }
    }
}