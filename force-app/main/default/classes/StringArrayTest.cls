public class StringArrayTest {
	public static List<String> generateStringArray(Integer n) {
        List<String> genereted = new List<String>();
        
        for(Integer i=0;i<n;i++){
        	genereted.add('Test' +' '+ i);
        }
        
        for( String g : genereted ){
             System.debug('items list: ' + g );
        }
        
        return genereted;
    }
}