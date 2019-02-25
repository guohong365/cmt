using System.Xml;

namespace PathBuilder
{
    public interface ITagData : ITag
    {
        object ActiveFrom { get; set; }
        object ActiveTill { get; set; }
        object Confcal { get; set; }
        object Date { get; set; }
        object Days { get; set; }
        object DaysAndOr { get; set; }
        object DaysCal { get; set; }
        object Level { get; set; }
        object MaxWait { get; set; }
        object Retro { get; set; }
        object Shift { get; set; }
        object ShiftNum { get; set; }
        object TagsActiveFrom { get; set; }
        object TagsActiveTill { get; set; }
        object WeekDays { get; set; }
        object Weekscal { get; set; }
        object JAN { get; set; }
        object FEB { get; set; }
        object MAR { get; set; }
        object APR { get; set; }
        object MAY { get; set; }
        object JUN { get; set; }
        object JUL { get; set; }
        object AUG { get; set; }
        object SEP { get; set; }
        object OCT { get; set; }
        object NOV { get; set; }
        object DEC { get; set; }
    }

    public class TagData : Tag, ITagData
    {
        public object ActiveFrom { get; set; }
        public object ActiveTill { get; set; }
        public object Confcal { get; set; }
        public object Date { get; set; }
        public object Days { get; set; }
        public object DaysAndOr { get; set; }
        public object DaysCal { get; set; }
        public object Level { get; set; }
        public object MaxWait { get; set; }
        public object Retro { get; set; }
        public object Shift { get; set; }
        public object ShiftNum { get; set; }
        public object TagsActiveFrom { get; set; }
        public object TagsActiveTill { get; set; }
        public object WeekDays { get; set; }
        public object Weekscal { get; set; }
        public object JAN { get; set; }
        public object FEB { get; set; }
        public object MAR { get; set; }
        public object APR { get; set; }
        public object MAY { get; set; }
        public object JUN { get; set; }
        public object JUL { get; set; }
        public object AUG { get; set; }
        public object SEP { get; set; }
        public object OCT { get; set; }
        public object NOV { get; set; }
        public object DEC { get; set; }


        public override XmlElement Export(XmlDocument doc, XmlElement parent)
        {
            XmlElement current = base.Export(doc, parent);
            if (ActiveFrom != null)current.SetAttribute("ACTIVE_FROM", ActiveFrom.ToString());
            if (ActiveTill != null)current.SetAttribute("ACTIVE_TILL", ActiveTill.ToString());
            if (Confcal != null)current.SetAttribute("CONFCAL", Confcal.ToString());
            if (Date != null)current.SetAttribute("DATE", Date.ToString());
            if (Days != null)current.SetAttribute("DAYS", Days.ToString());
            if (DaysAndOr != null) current.SetAttribute("DAYS_AND_OR", DaysAndOr.ToString());
            if (DaysCal != null) current.SetAttribute("DAYSCAL", DaysCal.ToString());
            if (Level != null) current.SetAttribute("LEVEL", Level.ToString());
            if (MaxWait != null) current.SetAttribute("MAXWAIT", MaxWait.ToString());
            if (Retro != null) current.SetAttribute("RETRO", Retro.ToString());
            if (Shift != null) current.SetAttribute("SHIFT", Shift.ToString());
            if (ShiftNum != null) current.SetAttribute("SHIFTNUM", ShiftNum.ToString());
            if (TagsActiveFrom != null) current.SetAttribute("TAGS_ACTIVE_FROM", TagsActiveFrom.ToString());
            if (TagsActiveTill != null) current.SetAttribute("TAGS_ACTIVE_TILL", TagsActiveTill.ToString());
            if (WeekDays != null) current.SetAttribute("WEEKDAYS", WeekDays.ToString());
            if (Weekscal != null) current.SetAttribute("WEEKSCAL", Weekscal.ToString());
            if (JAN != null) current.SetAttribute("JAN", JAN.ToString());
            if (FEB != null) current.SetAttribute("FEB", FEB.ToString());
            if (MAR != null) current.SetAttribute("MAR", MAR.ToString());
            if (APR != null) current.SetAttribute("APR", APR.ToString());
            if (MAY != null) current.SetAttribute("MAY", MAY.ToString());
            if (JUN != null) current.SetAttribute("JUN", JUN.ToString());
            if (JUL != null) current.SetAttribute("JUL", JUL.ToString());
            if (AUG != null) current.SetAttribute("AUG", AUG.ToString());
            if (SEP != null) current.SetAttribute("SEP", SEP.ToString());
            if (OCT != null) current.SetAttribute("OCT", OCT.ToString());
            if (NOV != null) current.SetAttribute("NOV", NOV.ToString());
            if (DEC != null) current.SetAttribute("DEC", DEC.ToString());
            return current;
        }



    }
}
