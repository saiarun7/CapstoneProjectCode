package Demo;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Lunar
 */
import java.io.File;  
import java.io.IOException;  
import java.util.HashMap;  
import java.util.Map;  
import com.google.zxing.BarcodeFormat;  
import com.google.zxing.EncodeHintType;  
import com.google.zxing.MultiFormatWriter;  
//import com.google.zxing.NotFoundException;  
import com.google.zxing.WriterException;  
import com.google.zxing.client.j2se.MatrixToImageWriter;  
import com.google.zxing.common.BitMatrix;  
import com.google.zxing.common.ByteMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;  
import javax.swing.JOptionPane;
public class Demo {
    //static function that creates QR Code  
public static void generateQRcode(String data, String path, String charset, Map map, int h, int w) throws WriterException, IOException  
{  
//the BitMatrix class represents the 2D matrix of bits  
//MultiFormatWriter is a factory class that finds the appropriate Writer subclass for the BarcodeFormat requested and encodes the barcode with the supplied contents.  
ByteMatrix matrix = new MultiFormatWriter().encode(new String(data.getBytes(charset), charset), BarcodeFormat.QR_CODE, w, h);  
MatrixToImageWriter.writeToFile(matrix, path.substring(path.lastIndexOf('.') + 1), new File(path));  
}  
//main() method  
public static void main(String args,String fname) throws WriterException, IOException  
{  
//data that we want to store in the QR code  
String str= args;
        
//path where we want to get QR Code  
//String path = "D://QRimages//"+fname+".png"; 
String path = "C:\\Users\\Lunar\\Documents\\NetBeansProjects\\Android based vehicle infermation\\web\\images\\"+fname+".png";  
//JOptionPane.showMessageDialog(null, fname);
//JOptionPane.showMessageDialog(null, args);

//Encoding charset to be used  
String charset = "UTF-8";  
Map<EncodeHintType, ErrorCorrectionLevel> hashMap = new HashMap<EncodeHintType, ErrorCorrectionLevel>();  
//generates QR code with Low level(L) error correction capability  
hashMap.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.L);  
//invoking the user-defined method that creates the QR code  
generateQRcode(str, path, charset, hashMap, 200, 200);//increase or decrease height and width accodingly   
//prints if the QR code is generated   
System.out.println("QR Code created successfully.");  
}  

}
