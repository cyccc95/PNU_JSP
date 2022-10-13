package common;

public class Weight {
	public static String[] calcWeight(int n) {
		int count = 0;
		String str = "";
		for (int i = 1; i <= 10 ; i++){
            for (int j = 1; j <= 10 ; j++){
                for (int k = 1; k <= 10; k++){
                    if( i*2 + j*3 + k*5 == n){
                        count++;
//                        System.out.printf("(%d,%d,%d)",i,j,k);
                        str +=  "(" + i + ", " + j + ", " + k + ")";
                    }
                }
            }
        }
//        System.out.println(" : " + count);
		String[] result = {str, String.valueOf(count)};
		return result;
	}
}
