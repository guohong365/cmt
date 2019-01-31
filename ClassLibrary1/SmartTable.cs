using System.Collections.ObjectModel;

namespace CTM
{
    public class SmartTable : SubTable
    {
        public Collection<FolderClientData> ADDITIONAL_FOLDER_DETAILS;
        public string DATACENTER;
        public string VERSION;
        public string PLATFORM;
        public string FOLDER_NAME;
        public string TABLE_NAME;
        public string FOLDER_DSN;
        public string TABLE_DSN;
        public bool MODIFIED;
        public string LAST_UPLOAD;
        public string FOLDER_ORDER_METHOD;
        public string TABLE_USERDAILY;
        public int REAL_FOLDER_ID;
        public int REAL_TABLEID;
        public int TYPE;
        public string USED_BY;
        public int USED_BY_CODE;
        public string ENFORCE_VALIDATION; //"N"/"Y"
        public string SITE_STANDARD_NAME;
        public string REMOVEATONCE;
        public int DAYSKEEPINNOTOK;
    }
}