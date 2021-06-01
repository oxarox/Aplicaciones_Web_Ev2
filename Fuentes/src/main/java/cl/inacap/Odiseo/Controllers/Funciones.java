package cl.inacap.Odiseo.Controllers;

import java.math.BigInteger;
import java.security.MessageDigest;

public class Funciones {

	
	//Puse la encripatcion que uso el profe, para no perder mas tiempo, 
	//ya tendre tiempo para aprender esto con calma. 
	public static String EncriptarMd5(String pal) {
		String  PalabraCodificada="";
		
		try {
			MessageDigest md=MessageDigest.getInstance("MD5");
			
			byte[] MessageDIgest=md.digest(pal.getBytes());
			BigInteger numero=new BigInteger(1,MessageDIgest);
			String hashtext=numero.toString(16);
			
			while(hashtext.length()<32) {
				hashtext="0"+hashtext;
			}
			
			PalabraCodificada=hashtext;
			
			
		}catch(Exception ex) {
			
		}
		
		return PalabraCodificada;
	}
	
	
}
