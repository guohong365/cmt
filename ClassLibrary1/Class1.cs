using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;

namespace CTM
{
    public static class MonthsExtensions
    {
        public static bool HasFlagFast(this MONTHS value, MONTHS flag)
        {
            return (value & flag) != 0;
        }
    }

    public class CtbStepData
    {
    }

    public class SMART_FOLDER
    {
        private string ADJUST_COND = "N";
        private string APPLICATION = "FDB_BDP";
        private string APPL_TYPE = "OS";
        private string AUTOARCH = "1";
        private string CONFIRM = "0";
        private string CREATED_BY = "emuser";
        private string CREATION_DATE = "20180319";
        private string CREATION_TIME = "095617";
        private string CREATION_USER = "emuser";
        private string CRITICAL = "0";
        private string CYCLIC = "0";
        private string CYCLIC_TOLERANCE = "0";
        private string CYCLIC_TYPE = "C";
        private string DATACENTER = "CTM-A";
        private string DAYS = "ALL";
        private string DAYSKEEPINNOTOK = "0";
        private string DAYS_AND_OR = "O";
        private string ENFORCE_VALIDATION = "N";
        private string FOLDER_NAME = "ECIF";
        private string FOLDER_ORDER_METHOD = "SYSTEM";
        private string IND_CYCLIC = "S";
        private string INTERVAL = "00001M";
        private string JOBISN = "1";
        private string JOBNAME = "ECIF";
        private string LAST_UPLOAD = "20180606100656UTC";
        private string MAXDAYS = "0";
        private string MAXRERUN = "0";
        private string MAXRUNS = "0";
        private string MAXWAIT = "0";
        private string MODIFIED = "False";
        private string PARENT_FOLDER = "ECIF";
        private string PLATFORM = "UNIX";
        private string REMOVEATONCE = "N";
        private string RETRO = "0";
        private string SHIFT = "Ignore Job";
        private string SUB_APPLICATION = "EDW";
        private string SYSDB = "1";
        private string TASKTYPE = "SMART Table";
        private string TYPE = "2";
        private string USED_BY_CODE = "0";
        private string USE_INSTREAM_JCL = "N";
        private string VERSION = "900";
        private string VERSION_SERIAL = "1";
    }

    public class SUB_FOLDER
    {
        private string ADJUST_COND = "N";
        private string APPLICATION = "FDB_BDP";
        private string APPL_TYPE = "OS";
        private MONTHS MONTHS;
        private string AUTOARCH = "1";
        private string CONFIRM = "0";
        private string CREATED_BY = "emuser";
        private string CRITICAL = "0";
        private string CYCLIC = "0";
        private string CYCLIC_TOLERANCE = "0";
        private string CYCLIC_TYPE = "C";
        private string DAYS = "ALL";
        private string DAYS_AND_OR = "O";
        private string IND_CYCLIC = "S";
        private string INTERVAL = "00001M";
        private string JOBNAME = "IM";
        private string MAXDAYS = "0";
        private string MAXRERUN = "0";
        private string MAXRUNS = "0";
        private string MAXWAIT = "0";
        private string PARENT_FOLDER = "ECIF/FDM/FDM_MAP";
        private string RETRO = "0";
        private string RULE_BASED_CALENDAR_RELATIONSHIP = "A";
        private string SUB_APPLICATION = "EDW";
        private string SYSDB = "1";
        private string TASKTYPE = "Sub-Table";
        string USE_INSTREAM_JCL= "N";

        public Collection<JobTagData> RULE_BASED_CALENDARS;
        public Collection<JOB> JOBS;
    }

    public class JOB
    {
        private string APPLICATION = "FDB_ECIF";
        private string APPL_TYPE = "OS";
        private MONTHS MONTHS;
        private string CMDLINE = "sh test.sh %%$ODATE  %%SUBSTR %%JOBNAME 12 100";
        private string CREATED_BY = "ctm";
        private string CREATION_DATE = "20180606";
        private string CREATION_TIME = "100709";
        private string DAYS = "ALL";
        private string DAYS_AND_OR = "O";
        private string DESCRIPTION = "字段映射_码值转换_基础-内部法人信息表";
        private string INTERVAL = "00001M";
        private string IS_CURRENT_VERSION = "Y";
        private string JOBISN = "80004";
        private string JOBNAME = "DB_FDM_MAP_F_PUB_FAREN_INFO";
        private string MAXDAYS = "0";
        private string MAXRERUN = "0";
        private string MULTY_AGENT = "N";
        private string NODEID = "ctm-a";
        private string PARENT_FOLDER = "ECIF/FDM/FDM_MAP/PUB";
        private string PRIORITY = "0A";
        private string RUN_AS = "edwuser";
        private string SUB_APPLICATION = "FDM_MAP_PUB";
        private string TASKTYPE = "Command";
        private string USE_INSTREAM_JCL = "N";
        private string VERSION_HOST = "CPDEV-A156";
        private string VERSION_OPCODE = "N";
    }

    public class JOB_
    {
        string JOBNAME;
        string JOBPATH;
        string JOBISN;
        string APPLICATION;
        private string SUB_APPLICATION;
        string APPL_TYPE;
        string DESCRIPTION;
        string TASKTYPE;
        string MEMLIB;
        string MEMNAME;
        string CMDLINE;
        string CREATED_BY;
        private string NODEID;
        private string RUN_AS;
        string PRIORITY;
        string CRITICAL;
        string MAXRERUN;
        string INTERVAL;
        string DOCLIB;
        string DOCMEM;
        string MULTY_AGENT;
        string CONFIRM;
        string APPL_FORM;
        string CM_VER;
        string USE_INSTREAM_JCL;
        private string VERSION_OPCODE;
        string IS_CURRENT_VERSION;
        string VERSION_SERIAL;
        private string VERSION_HOST;
    }
}
