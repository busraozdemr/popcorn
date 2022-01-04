import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

public class WriteData {
    public static void writeDate() throws FileNotFoundException, UnsupportedEncodingException {
        PrintWriter printWriter = new PrintWriter("data.txt", "UTF-8");
        printWriter.println("this is first line");
        printWriter.println("this is second line");
        printWriter.close();
    }
}
