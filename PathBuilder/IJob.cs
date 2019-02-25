using System.Collections.ObjectModel;
using System.Xml;

namespace PathBuilder
{
    public enum NOTE_CREATOR
    {
        REQUESTER = 0,
        SCHEDULER = 1
    }
    public enum NOTES_STATUS
    {
        NOTSET = 0,
        OPEN = 1,
        APPROVED = 2
    }
    public interface IWcmNote : IXmlConfigItem
    {
        string Message { get; set; }
        string TimeStamp{ get; set; }


         NOTE_CREATOR NoteCreator{ get; set; }
        string UserName{ get; set; }
    }

    public class WcmNote :XmlConfigItem, IWcmNote
    {
        public string Message { get; set; }
        public string TimeStamp { get; set; }
        public NOTE_CREATOR NoteCreator { get; set; }
        public string UserName { get; set; }
        public override XmlElement Export(XmlDocument doc, XmlElement parent)
        {
            XmlElement current=base.Export(doc, parent);
            if (Message != null) current.SetAttribute("MESSAGE", Message);
            if (TimeStamp != null) current.SetAttribute("TIME_STAMP", TimeStamp);
            if (UserName != null) current.SetAttribute("USER_NAME", UserName);
            current.SetAttribute("NOTE_CREATOR", NoteCreator.ToString());
            return current;
        }

        public WcmNote()
        {
            XmlTagName = "WCMNote";
        }
    }
    public interface IWcmNotesData : IXmlConfigItem
    {
        Collection<IWcmNote> NoteHistory{ get; }

        NOTES_STATUS NotesStatus{ get; set; }
        string MessageDraft{ get; set; }
    }

    public class WcmNotesData :XmlConfigItem, IWcmNotesData
    {
        public WcmNotesData()
        {
            NoteHistory = new Collection<IWcmNote>();
            XmlTagName = "WCMNotesData";
        }

        public Collection<IWcmNote> NoteHistory { get; private set; }
        public NOTES_STATUS NotesStatus { get; set; }
        public string MessageDraft { get; set; }
        public override XmlElement Export(XmlDocument doc, XmlElement parent)
        {
            XmlElement current= base.Export(doc, parent);

            foreach (var wcmNote in NoteHistory)
            {
                wcmNote.Export(doc, current);
            }

            if (MessageDraft != null) current.SetAttribute("MESSAGE_DRAFT", MessageDraft);
            current.SetAttribute("NOTES_STATUS", NotesStatus.ToString());
            return current;
        }
    }
    public interface IJobClientData : IXmlConfigItem
    {
        Collection<IWcmNotesData> WcmNotesData{ get;  }
         string Instruction{ get; set; }
         bool InstructionRead{ get; set; }
         string Comment{ get; set; }
         bool CommentRead{ get; set; }
    }

    public class JobClientData: XmlConfigItem, IJobClientData
    {
        public JobClientData()
        {
            WcmNotesData = new Collection<IWcmNotesData>();
        }

        public Collection<IWcmNotesData> WcmNotesData { get; private set; }
        public string Instruction { get; set; }
        public bool InstructionRead { get; set; }
        public string Comment { get; set; }
        public bool CommentRead { get; set; }

        public override XmlElement Export(XmlDocument doc, XmlElement parent)
        {
            XmlElement current= base.Export(doc, parent);
            foreach (var notesData in WcmNotesData)
            {
                notesData.Export(doc, current);
            }

            if (Instruction != null) current.SetAttribute("INSTRUCTION", Instruction);
            if (Comment != null) current.SetAttribute("COMMENT", Comment);
            current.SetAttribute("INSTRUCTION_READ", InstructionRead?"1":"0");
            current.SetAttribute("COMMENT_READ", CommentRead?"1":"0");
            return current;
        }
    }
    public interface ISetVarData: IXmlConfigItem
    {
        string Name { get; set; }
        string Value { get; set; }
    }

    public class SetVerData :XmlConfigItem, ISetVarData
    {
        public string Name { get; set; }
        public string Value { get; set; }
        public override XmlElement Export(XmlDocument doc, XmlElement parent)
        {
            var current= base.Export(doc, parent);
            if (Name != null) current.SetAttribute("NAME", Name);
            if (Value != null) current.SetAttribute("VALUE", Value);
            return current;
        }
    }
    public interface ISetVarDataOld : IXmlConfigItem
    {
        string EXP { get; set; }
    }
    public class SetVarDataOld : XmlConfigItem, ISetVarDataOld
    {
        public string EXP { get; set; }
        public override XmlElement Export(XmlDocument doc, XmlElement parent)
        {
            var current=base.Export(doc, parent);
            if (EXP != null) current.SetAttribute("EXP", EXP);
            return current;
        }
    }

    public interface IShoutData : IXmlConfigItem
    {
        string WHEN { get; set; }
        string TIME{ get; set; }
             string URGENCY{ get; set; }
             string DEST{ get; set; }
             string MESSAGE{ get; set; }
             string DAYSOFFSET{ get; set; }
       
    }

    public class ShoutData : XmlConfigItem, IShoutData
    {
        public string WHEN { get; set; }
        public string TIME { get; set; }
        public string URGENCY { get; set; }
        public string DEST { get; set; }
        public string MESSAGE { get; set; }
        public string DAYSOFFSET { get; set; }
        public override XmlElement Export(XmlDocument doc, XmlElement parent)
        {
            var current= base.Export(doc, parent);
            if (WHEN != null) current.SetAttribute("WHEN", WHEN);
            if (TIME != null) current.SetAttribute("TIME", TIME);
            if (URGENCY != null) current.SetAttribute("URGENCY", URGENCY);
            if (DEST != null) current.SetAttribute("DEST", DEST);
            if (MESSAGE != null) current.SetAttribute("MESSAGE", MESSAGE);
            if (DAYSOFFSET != null) current.SetAttribute("DAYSOFFSET", DAYSOFFSET);
            return current;
        }

        public ShoutData()
        {
            XmlTagName = "SHOUT";
        }
    }

    public interface IControlResourceData:IXmlConfigItem
    {
         string NAME { get; set; }
         string TYPE { get; set; }
         string ONFAIL { get; set; }
    }

    public class ControlResourceData : XmlConfigItem, IControlResourceData
    {
        public string NAME { get; set; }
        public string TYPE { get; set; }
        public string ONFAIL { get; set; }

        public override XmlElement Export(XmlDocument doc, XmlElement parent)
        {
            var current= base.Export(doc, parent);
            if (NAME != null) current.SetAttribute("NAME", NAME);
            if (TYPE != null) current.SetAttribute("TYPE", TYPE);
            if (ONFAIL != null) current.SetAttribute("ONFAIL", ONFAIL);
            return current;
        }
    }

    public interface IInConditionData:IXmlConfigItem
    {
         string NAME { get; set; }
         string ODATE { get; set; }
         string AND_OR { get; set; }
         string OP { get; set; }
    }

    public class InConditionData : XmlConfigItem, IInConditionData
    {
        public string NAME { get; set; }
        public string ODATE { get; set; }
        public string AND_OR { get; set; }
        public string OP { get; set; }
        public override XmlElement Export(XmlDocument doc, XmlElement parent)
        {
            var current=base.Export(doc, parent);
            if (NAME != null) current.SetAttribute("NAME", NAME);
            if (ODATE != null) current.SetAttribute("ODATE", ODATE);
            if (AND_OR != null) current.SetAttribute("AND_OR", AND_OR);
            if (OP != null) current.SetAttribute("OP", OP);
            return current;
        }
    }

    public interface IQuantitativeResourceData : IXmlConfigItem
    {
        string NAME { get; set; }
        string QUANT { get; set; }
        string ONFAIL { get; set; }
        string ONOK { get; set; }
    }

    public class QuantitativeResourceData : XmlConfigItem, IQuantitativeResourceData
    {
        public string NAME { get; set; }
        public string QUANT { get; set; }
        public string ONFAIL { get; set; }
        public string ONOK { get; set; }
    }

    public interface IOutConditionData :IXmlConfigItem
    {
         string NAME { get; set; }
         string ODATE { get; set; }
         string SIGN { get; set; }
    }

    public class OutConditionData : XmlConfigItem, IOutConditionData
    {
        public string NAME { get; set; }
        public string ODATE { get; set; }
        public string SIGN { get; set; }
    }

    public interface IStepRangeData:IXmlConfigItem
    {
         string NAME { get; set; }
         string FPGMS { get; set; }
         string FPROCS { get; set; }
         string TPGMS { get; set; }
         string TPROCS { get; set; }
    }

    public class StepRangeData:XmlConfigItem, IStepRangeData
    {
        public string NAME { get; set; }
        public string FPGMS { get; set; }
        public string FPROCS { get; set; }
        public string TPGMS { get; set; }
        public string TPROCS { get; set; }
    }

    public interface IDoActionData:IXmlConfigItem
    {
        string ACTION { get; set; }
    }

    public class DoActionData :XmlConfigItem, IDoActionData
    {
        public string ACTION { get; set; }
    }

    public interface IDoCondData :IXmlConfigItem
    {

    }

    public interface IDoCtbRuleData : IXmlConfigItem
    {

    }

    public interface IDoForceJobData:IXmlConfigItem
    {

    }

    public interface IDoIfRerunData : IXmlConfigItem
    {

    }

    public interface IDoMailData : IXmlConfigItem
    {

    }

    public interface IDoRemedyData : IXmlConfigItem
    {

    }

    public interface IDoShoutData:IXmlConfigItem
    {

    }

    public interface IDoSysoutData : IXmlConfigItem
    {

    }
    public interface IOnData :IXmlConfigItem
    {
        Collection<IDoActionData> DO { get; }
        Collection<IDoActionData> DO_TABLE { get; }
        Collection<IDoActionData> DO_GROUP { get; }
        Collection<IDoActionData> DOACTION { get; }
        Collection<IDoActionData> ACTION { get; }
        Collection<IDoCondData> DOCOND { get; }
        Collection<IDoCtbRuleData> DOCTBRULE { get; }
        Collection<IDoForceJobData> DOFORCEJOB { get; }
        Collection<IDoIfRerunData> DOIFRERUN { get; }
        Collection<IDoMailData> DOMAIL { get; }
        Collection<IDoRemedyData> DOREMEDY { get; }
        Collection<ISetVarData> DOAUTOEDIT2 { get; }
        Collection<ISetVarDataOld> DOAUTOEDIT { get; }
        Collection<ISetVarData> DOVARIABLE { get; }
        Collection<IDoShoutData> DOSHOUT { get; }
        Collection<IDoSysoutData> DOOUTPUT { get; }
        Collection<IDoSysoutData> DOSYSOUT { get; }
        string STMT { get; set; }
        string PGMS { get; set; }
        string PROCS { get; set; }
        string CODE { get; set; }
        string AND_OR { get; set; }
        string PATTERN { get; set; }
        string FROM_COLUMN { get; set; }
        string TO_COLUMN { get; set; }
    }

    public interface ICaptureData :IXmlConfigItem
    {
        string SEARCH_STRING { get; set; }
        int SKIP_LINES { get; set; }
        int SKIP_COLUMNS { get; set; }
        string BY_WHAT { get; set; }
        string DELIMITER { get; set; }
        int COUNT_TO_TAKE { get; set; }
        string VARIABLE { get; set; }
        string FUTURE_USE { get; set; }
    }
    public interface IJob:ITagData 
    {
        IJob Parent { get; set; }
        Collection<IJobClientData> AdditionalJobDetails{ get;  }
        Collection<ISetVarData> AutoEdit2{ get;  }
        Collection<ISetVarDataOld> AutoEdit{ get;  }
        Collection<ISetVarData> Variable{ get;  }
        Collection<IShoutData> Shout{ get;  }
        Collection<IControlResourceData> CONTROL{ get;  }
        Collection<IInConditionData> INCOND{ get;  }
        Collection<IQuantitativeResourceData> QUANTITATIVE{ get;  }
        Collection<IOutConditionData> OUTCOND{ get;  }
        Collection<IStepRangeData> STEP_RANGE{ get;  }
        Collection<ITagData> RULE_BASED_CALENDAR{ get;  }
        Collection<ITagData> TAG{ get;  }
        Collection<ITag> RULE_BASED_CALENDARS{ get;  }
        Collection<ITag> TAG_NAMES{ get;  }
        Collection<IOnData> ON{ get;  }
        Collection<IOnData> ON_TABLE{ get;  }
        Collection<IOnData> ON_GROUP{ get;  }
        Collection<ICaptureData> CAPTURE{ get;  }

        object JobIsn{get;set;}
        object Application{get;set;}
        object SubApplication{get;set;}
        object Group{get;set;}
        object MemName{get;set;}
        object JobName{get;set;}
        object Description{get;set;}
        object CreatedBy{get;set;}
        object Author{get;set;}
        object RunAs{get;set;}
        object Owner{get;set;}
        object Priority{get;set;}
        object Critical{get;set;}
        object TaskType{get;set;}
        object Cyclic{get;set;}
        object NodeId{get;set;}
        object DocLib{get;set;}
        object DocMem{get;set;}
        object Interval{get;set;}
        object OverridePath{get;set;}
        object OverLib{get;set;}
        object MemLib{get;set;}
        object CmdLine{get;set;}
        object Confirm{get;set;}
        object MaxRerun{get;set;}
        object AutoArch{get;set;}
        object MaxDays{get;set;}
        object MaxRuns{get;set;}
        object TimeFrom{get;set;}
        object TimeTo{get;set;}
        object RerunMem{get;set;}
        object Category{get;set;}
        object PdsName{get;set;}
        object Minimum{get;set;}
        object PreventNct2{get;set;}
        object Option{get;set;}
        object From{get;set;}
        object Par{get;set;}
        object SysDb{get;set;}
        object DueOut{get;set;}
        object RetenDays{get;set;}
        object RetenGen{get;set;}
        object TaskClass{get;set;}
        object PrevDay{get;set;}
        object AdjustCond{get;set;}
        object JobsInGroup{get;set;}
        object LargeSize{get;set;}
        object IndCyclic{get;set;}
        object CreationUser{get;set;}
        object CreationDate{get;set;}
        object CreationTime{get;set;}
        object ChangeUserid{get;set;}
        object ChangeDate{get;set;}
        object ChangeTime{get;set;}
        object JobVersion{get;set;}
        object RuleBasedCalendarRelationship{get;set;}
        object TagRelationship{get;set;}
        object Timezone{get;set;}
        object ApplType{get;set;}
        object ApplVer{get;set;}
        object ApplForm{get;set;}
        object CmVer{get;set;}
        object MultyAgent{get;set;}
        object SchedulingEnvironment{get;set;}
        object SystemAffinity{get;set;}
        object RequestNjeNode{get;set;}
        object StatCal{get;set;}
        object InstreamJcl{get;set;}
        object UseInstreamJcl{get;set;}
        object DueOutDaysoffset{get;set;}
        object FromDaysoffset{get;set;}
        object ToDaysoffset{get;set;}
        object VersionOpcode{get;set;}
        object IsCurrentVersion{get;set;}
        object VersionSerial{get;set;}
        object VersionHost{get;set;}
        object CyclicIntervalSequence{get;set;}
        object CyclicTimesSequence{get;set;}
        object CyclicTolerance{get;set;}
        object CyclicType{get;set;}
        object ParentFolder{get;set;}
        object ParentTable{get;set;}
        object Odate{get;set;}
        object Fprocs{get;set;}
        object Tpgms{get;set;}
        object Tprocs{get;set;}
    }


}