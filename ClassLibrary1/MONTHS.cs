using System;

namespace CTM
{
    [Flags]
    public enum MONTHS
    {
        JAN = 1 << 0,
        FEB = 1 << 1,
        MAR = 1 << 2,
        APR = 1 << 3,
        MAY = 1 << 4,
        JUN = 1 << 5,
        JUL = 1 << 6,
        AUG = 1 << 7,
        SEP = 1 << 8,
        OCT = 1 << 9,
        NOV = 1 << 10,
        DEC = 1 << 11
    };
}