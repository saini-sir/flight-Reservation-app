package com.flight_reservation_app_5.flight_reservation_app_5.utilities;



import java.io.FileOutputStream;
import java.util.Date;

import org.springframework.stereotype.Component;

import com.itextpdf.text.Anchor;
import com.itextpdf.text.BadElementException;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chapter;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.List;
import com.itextpdf.text.ListItem;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;

import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

@Component
public class PDFgenerator {


    private static Font catFont = new Font(Font.FontFamily.TIMES_ROMAN, 18,
            Font.BOLD);

    private static Font smallBold = new Font(Font.FontFamily.TIMES_ROMAN, 12,
            Font.BOLD);

    public void PDFgenerator(String filePath, String name , String email,String phone,
    		String operatingAirlines,Date departureDate ,String departureCity, String arrivalCity) {
        try {
            Document document = new Document();
            PdfWriter.getInstance(document, new FileOutputStream(filePath));
            document.open();
            addMetaData(document);
            addTitleAndTable(document,name,email,phone,operatingAirlines,departureDate,departureCity,arrivalCity);
           
            document.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // iText allows to add metadata to the PDF which can be viewed in your Adobe
    // Reader
    // under File -> Properties
    private static void addMetaData(Document document) {
        document.addTitle("My first PDF");
        document.addSubject("Using iText");
        document.addKeywords("Java, PDF, iText");
        document.addAuthor("Lars Vogel");
        document.addCreator("Lars Vogel");
    }

    private static void addTitleAndTable(Document document,String name ,String email, String phone,
    		String operatingAirlines, Date departureDate ,String departureCity ,String arrivalCity)
            throws DocumentException {
        Paragraph preface = new Paragraph();
      
        preface.add(new Paragraph("Flight booking details", catFont));


        preface.add(new Paragraph(
                "Report generated by: " + "Flight Reservation Company" + ", " + new Date(), //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
                smallBold));

        document.add(preface);
        document.add(Chunk.NEWLINE);
        document.add(Chunk.NEWLINE);
       
        PdfPTable table = new PdfPTable(2);
        table.setWidthPercentage(100);
        // t.setBorderColor(BaseColor.GRAY);
        // t.setPadding(4);
        // t.setSpacing(4);
        // t.setBorderWidth(1);

        PdfPCell c1 = new PdfPCell(new Phrase("Passenger Details"));
        c1.setHorizontalAlignment(Element.ALIGN_CENTER);
        c1.setColspan(2);
        table.addCell(c1);
        
        table.addCell("Passenger name");
        table.addCell(name);
        table.addCell("Email Id");
        table.addCell(email);       
        table.addCell("Phone Number");
        table.addCell(phone);
        
        document.add(table);
        
        PdfPTable table1 = new PdfPTable(2);
        table1.setWidthPercentage(100);
        
        PdfPCell c2 = new PdfPCell(new Phrase("Flight Details"));
        c2.setHorizontalAlignment(Element.ALIGN_CENTER);
        c2.setColspan(2);
        table1.addCell(c2);
        
        table1.addCell("Operating Airlines");
        table1.addCell(operatingAirlines);
        table1.addCell("Departure Date");
        table1.addCell(departureDate.toString());       
        table1.addCell("Departure City");
        table1.addCell(departureCity);
        table1.addCell("Arrival City");
        table1.addCell(arrivalCity);
        
        document.add(table1);

    document.close();
    }


}