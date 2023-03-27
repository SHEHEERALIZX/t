import java.io.*;
import java.net.*;
import java.util.Scanner;
import java.util.concurrent.TimeUnit;
 
class Client {

            public static void ClientFunction() {

        try {
            Socket socket = new Socket("localhost", 8888);
            DataInputStream dis = new DataInputStream(socket.getInputStream());
            DataOutputStream dos = new DataOutputStream(socket.getOutputStream());
            BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
            String str1 = "", str2 = "";
            System.out.println("Connected to server");
            while (!str1.equals("stop")) {
                str1 = br.readLine();
                dos.writeUTF(str1);
                dos.flush();
                str2 = dis.readUTF();
                System.out.println("Server says: " + str2);
            }
            dis.close();
            socket.close();

        } catch (Exception e) {
            // System.out.println(e);
            System.out.println("Connection lost, trying to reconnect...");
            try {
                TimeUnit.SECONDS.sleep(5);
            } catch (InterruptedException e1) {
                e1.printStackTrace();
            }
            System.out.println("Trying to reconnect...");
            ClientFunction();
        }

        }
    public static void main(String[] args)   {


        ClientFunction();



        

    
    }
}