package org.auth.service;

import javax.inject.Named;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@Named
public class Md5hashGenerator {

	private static String convertToHex(byte[] data) { 
        StringBuffer buf = new StringBuffer();
        for (int i = 0; i < data.length; i++) { 
            int halfbyte = (data[i] >>> 4) & 0x0F;
            int two_halfs = 0;
            do { 
                if ((0 <= halfbyte) && (halfbyte <= 9)) 
                    buf.append((char) ('0' + halfbyte));
                else 
                    buf.append((char) ('a' + (halfbyte - 10)));
                halfbyte = data[i] & 0x0F;
            } while(two_halfs++ < 1);
        } 
        return buf.toString();
    }

    public static String jumble(String original){
	    StringBuilder sb = new StringBuilder(original);

	    char temp;
	    int  swapWith;
	    int stringLength = sb.length();
	    boolean swap = false;
	    for(int i=0; i<sb.length(); i++)
	    {
	      swapWith = i+1;
	      if(swapWith < stringLength && swap){
		      temp = sb.charAt(i);
		      sb.setCharAt(i, sb.charAt(swapWith));
		      sb.setCharAt(swapWith, temp);
		      swap = false;
	      }else{
	    	  swap = true;
	      }
	    }

	    return sb.toString();
	  }
 
    public static String MD5(String text) 
    throws NoSuchAlgorithmException, UnsupportedEncodingException {
        MessageDigest md;
        text = "jkikwu@#$hytgqlr" + text + "!%^&*(*)6548521973";
        text = jumble(text);
        md = MessageDigest.getInstance("MD5");
        byte[] md5hash = new byte[32];
        md.update(text.getBytes("iso-8859-1"), 0, text.length());
        md5hash = md.digest();
        return convertToHex(md5hash);
    } 
    
}