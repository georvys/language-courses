@isTest
public class TestVerifyDate {
	@isTest static void testCheckDates() {
        Date d = VerifyDate.CheckDates(System.today(),System.today()+1);
        System.assertEquals(System.today()+1, d);
    }    
    @isTest static void testCheckDates2() {
        Date d = VerifyDate.CheckDates(System.today(),System.today()+40);
        
        Integer totalDays = Date.daysInMonth(d.year(), d.month());
		Date lastDay = Date.newInstance(d.year(), d.month(), totalDays);        
        System.assertEquals(d, lastDay);
    } 
    @isTest static void testDateWithin30Days() {
		Boolean d1 = VerifyDate.DateWithin30Days(System.today(), System.today()+5);
        System.assertEquals(true, d1);
	}
    @isTest static void testSetEndOfMonthDate() {
		Date d1 = VerifyDate.SetEndOfMonthDate(System.today());
        
        Integer totalDays = Date.daysInMonth(System.today().year(), System.today().month());
		Date lastDay = Date.newInstance(System.today().year(), System.today().month(), totalDays);
        
        System.assertEquals(d1, lastDay);
	}
}