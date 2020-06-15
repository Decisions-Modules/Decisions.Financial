using System;
using DecisionsFramework.Design.Flow;
using DecisionsFramework.Design.Properties;
using Finance = Excel.FinancialFunctions;




namespace Decisions.Financial
{

    [AutoRegisterMethodsOnClass(true, "Data/Financial/Excel Functions")]
    public static class ExcelFunctions
    {

        public static double CUMIPMT([PropertyClassification(new string[] { "Input" }, "Intrest rate per period", 0)] double intRate, [PropertyClassification(new string[] { "Input" }, "Number of periods", 0)] double noOfPeriods, [PropertyClassification(new string[] { "Input" }, "Present Value", 0)] double presentVal, [PropertyClassification(new string[] { "Input" }, "Start Period", 0)] double startPeriod, [PropertyClassification(new string[] { "Input" }, "End period", 0)] double endPeriod, [PropertyClassification(new string[] { "Input" }, "Payment due", 0)] Finance.PaymentDue payDue)
        {
            double cumipmtResult = Finance.Financial.CumIPmt(intRate, noOfPeriods, presentVal, startPeriod, endPeriod, payDue);
            return cumipmtResult;
        }
        public static double NPV([PropertyClassification(new string[] { "Input" }, "Intrest rate per period", 0)] double intRate, [PropertyClassification(new string[] { "Input" }, "Cash Flows", 0)] double[] cashFlo)
        {
            double npvResult = Finance.Financial.Npv(intRate, cashFlo);
            return npvResult;
        }
        public static double PMT([PropertyClassification(new string[] { "Input" }, "Intrest rate per period", 0)] double intRate, [PropertyClassification(new string[] { "Input" }, "Number of Periods", 0)] double noOfPeriods, [PropertyClassification(new string[] { "Input" }, "Present Value", 0)] double presentVal, [PropertyClassification(new string[] { "Input" }, "Future Value", 0)] double futureVal, [PropertyClassification(new string[] { "Input" }, "Payment due", 0)] Finance.PaymentDue payDue)
        {
            double pmtResult = Finance.Financial.Pmt(intRate, noOfPeriods, presentVal, futureVal, payDue);
            return pmtResult;
        }
        public static double PV([PropertyClassification(new string[] { "Input" }, "Intrest rate per period", 0)] double intRate, [PropertyClassification(new string[] { "Input" }, "Number of Periods", 0)] double noOfPeriods, [PropertyClassification(new string[] { "Input" }, "Periodic payment", 0)] double payPerPeriod, [PropertyClassification(new string[] { "Input" }, "Future Value", 0)] double futureVal, [PropertyClassification(new string[] { "Input" }, "Payment due", 0)] Finance.PaymentDue payDue)
        {
            double pvResult = Finance.Financial.Pv(intRate, noOfPeriods, payPerPeriod, futureVal, payDue);
            return pvResult;
        }
        public static double Rate([PropertyClassification(new string[] { "Input" }, "Number of Periods", 0)] double noOfPeriods, [PropertyClassification(new string[] { "Input" }, "Periodic payment", 0)] double payPerPeriod, [PropertyClassification(new string[] { "Input" }, "Present Value", 0)] double presentVal, [PropertyClassification(new string[] { "Input" }, "Future Value", 0)] double futureVal, [PropertyClassification(new string[] { "Input" }, "Payment due", 0)] Finance.PaymentDue payDue, [PropertyClassification(new string[] { "Input" }, "Guess Rate value", 0)] double guessRate)
        {
            double rateResult = Finance.Financial.Rate(noOfPeriods, payPerPeriod, presentVal, futureVal, payDue, guessRate);
            return rateResult;
        }
        public static double IRR([PropertyClassification(new string[] { "Input" }, "Cash Flow", 0)] double[] cashFlows, [PropertyClassification(new string[] { "Input" }, "Guess IRR value", 0)] double guessIRR)
        {
            double irrResult = Finance.Financial.Irr(cashFlows, guessIRR);
            return irrResult;
        }
    }
}
