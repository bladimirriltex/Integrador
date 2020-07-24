/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Correo;

import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

/**
 *
 * @author EDU
 */
public class Correo {
    
    
    public void EnviarBoleta(String correoreceptor) throws MessagingException{
        try {
        Properties props=new Properties();
        props.setProperty("mail.smtp.host","smtp.gmail.com");
        props.setProperty("mail.smtp.starttls.enable","true");
        props.setProperty("mail.smtp.port","587");
        props.setProperty("mail.smtp.auth","true");
        
        Session session = Session.getDefaultInstance(props);
        
        String correoRemitente="edurilthex@gmail.com";
        String password="edubladimir";
        
        String correoReceptor=correoreceptor;
        String asunto="Correo prueba";
        String mensaje="correo en java recibido";
        
        BodyPart adjunto=new MimeBodyPart();
        adjunto.setDataHandler(new DataHandler(new FileDataSource("D:/reporte.pdf")));
        adjunto.setFileName("boleta.pdf");
        
            MimeMultipart multipart=new MimeMultipart();
            multipart.addBodyPart(adjunto);
        
        MimeMessage message=new MimeMessage(session);
        
        message.setFrom(new InternetAddress(correoRemitente));
        message.addRecipient(Message.RecipientType.TO,new InternetAddress(correoReceptor));
        message.setSubject(asunto);
        message.setText(mensaje);
        message.setContent(multipart);
        
            Transport t=session.getTransport("smtp");
            t.connect(correoRemitente,password);
            t.sendMessage(message,message.getRecipients(Message.RecipientType.TO));
            t.close();
            System.out.println("el correo fue enviado");
            
        } catch (AddressException ex) {
            Logger.getLogger(Correo.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("el correo no fue enviado");
        }

    }
    
    
}
