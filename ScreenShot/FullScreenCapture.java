import java.awt.AWTException;
import java.awt.FlowLayout;
import java.awt.Rectangle;
import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.swing.JFrame;
import javax.swing.JLabel;


public class FullScreenCapture extends JFrame {

 
   private static final long serialVersionUID = 1L;

   public static void main(String[] args) {
      FullScreenCapture f = new FullScreenCapture();
      try {
       
         Thread.sleep(4000);
         Robot robot = new Robot();
         String filePath = "D://ScreenShot//";
	 String fileName =  args[0]+".jpg";	
	 fileName = filePath.concat(fileName);
         Rectangle screenRect = new Rectangle(Toolkit.getDefaultToolkit()
                                     .getScreenSize());
         BufferedImage screenFullImage = robot.createScreenCapture(screenRect);
         ImageIO.write(screenFullImage, "png", new File(fileName));

         f.setLocation(500, 500);
         JLabel text = new JLabel("ScreenShot Taken");
         f.add(text);
         f.setSize(200, 100);
         f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
         f.getContentPane().setLayout(new FlowLayout());
         f.setVisible(true);
      } catch (AWTException | IOException | InterruptedException ex) {
               System.err.println(ex);
      }
   }
}