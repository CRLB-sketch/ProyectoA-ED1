import java.util.Scanner;

public class main {

    public static void main(String[] args) {
        int n1=0,n2=1,n3,i,count=18;
        System.out.print(n1+" "+n2);//printing 0 and 1

        for(i=2;i<count;++i)//loop starts from 2 because 0 and 1 are already printed
        {
            n3=n1+n2;
            System.out.print(" "+n3);
            n1=n2;
            n2=n3;
        }

        int calculo = 1;

        for (int n=11; n>0;n--) {
            calculo *= n;

        }
        System.out.println("\n");
        System.out.println ("El factorial es" + calculo);


        System.out.println("Pasar Centigrados a Farenheit");

        int k=30;
        System.out.println("Celsius: "+k);
        double res=(k*1.8)+32;
        System.out.println("Farenheit: "+res);

        System.out.println("Pasar Farenheit a Centigrados");

        int c=180;
        System.out.println("Farenheit: "+c);
        double res2=(c-32)/1.8;
        System.out.println("Celsius: "+res2);

    }
}
