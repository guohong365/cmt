using System.Collections.ObjectModel;

namespace CTM
{
    public class WorkspaceData
    {
        public Collection<ClientData> ADDITIONAL_WORKSPACE_DETAILS;
        public int ID;
        public WorkspaceTYPE TYPE;
        public WorkspaceSTATE STATE;
        public string NAME;
        public string DESCRIPTION;
        public string OWNER;
        public string CREATED_TIME;
        public string UPDATED_TIME;
        public string CHANGE_TICKET_ID;
        public string ASSOCIATED_END_USER;
        public string TRANSFER_SIDE_TIMESTAMP;
        public string EMAIL_RECIPIENT;
    }
}