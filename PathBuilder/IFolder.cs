using System;
using System.Collections.Generic;

namespace PathBuilder
{
    public interface ISubFolder : IJob
    {
        ICollection<IJob> SubItems { get; }
        void Add(IJob job);
    }

    public interface IBusinessField :IXmlConfigItem
    {
        string Name { get; set; }
        string Value { get; set; }
    }

    public class BusinessField : SetVerData
    {
        public BusinessField()
        {
            XmlTagName = "BUSINESS_PARAMETER";
        }
    }
    public interface IFolderClientData:IXmlConfigItem
    {
        ICollection<IBusinessField> BUSINESS_PARAMETER { get; set; }
    }

    public interface ISmartFolder : ISubFolder
    {
        ICollection<IFolderClientData> ADDITIONAL_FOLDER_DETAILS { get; }

        string DATACENTER { get; set; }
        string VERSION { get; set; }
        string PLATFORM { get; set; }
        string FOLDER_NAME { get; set; }
        string TABLE_NAME { get; set; }
        string FOLDER_DSN { get; set; }
        string TABLE_DSN { get; set; }
        Boolean MODIFIED { get; set; }
        string LAST_UPLOAD { get; set; }
        string FOLDER_ORDER_METHOD { get; set; }
        string TABLE_USERDAILY { get; set; }
        Int32 REAL_FOLDER_ID { get; set; }
        Int32 REAL_TABLEID { get; set; }
        Int32 TYPE { get; set; }
        string USED_BY { get; set; }
        Int32 USED_BY_CODE { get; set; }
        string ENFORCE_VALIDATION { get; set; } //"N"/"Y"
        string SITE_STANDARD_NAME { get; set; }
        string REMOVEATONCE { get; set; }
        Int32 DAYSKEEPINNOTOK { get; set; }
    }

    public class SmartFolder :SubFolder, ISmartFolder
    {
        public SmartFolder()
        {
            ADDITIONAL_FOLDER_DETAILS =new List<IFolderClientData>();
        }

        public ICollection<IFolderClientData> ADDITIONAL_FOLDER_DETAILS { get; private set; }
        public string DATACENTER { get; set; }
        public string VERSION { get; set; }
        public string PLATFORM { get; set; }
        public string FOLDER_NAME { get; set; }
        public string TABLE_NAME { get; set; }
        public string FOLDER_DSN { get; set; }
        public string TABLE_DSN { get; set; }
        public Boolean MODIFIED { get; set; }
        public string LAST_UPLOAD { get; set; }
        public string FOLDER_ORDER_METHOD { get; set; }
        public string TABLE_USERDAILY { get; set; }
        public Int32 REAL_FOLDER_ID { get; set; }
        public Int32 REAL_TABLEID { get; set; }
        public Int32 TYPE { get; set; }
        public string USED_BY { get; set; }
        public Int32 USED_BY_CODE { get; set; }
        public string ENFORCE_VALIDATION { get; set; }
        public string SITE_STANDARD_NAME { get; set; }
        public string REMOVEATONCE { get; set; }
        public Int32 DAYSKEEPINNOTOK { get; set; }

        public SmartFolder(string name)
            :base(name)
        {
            XmlTagName = "SMART_FOLDER";
        }
    }


}