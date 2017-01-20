package com.jiwei.management.test;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import org.xhtmlrenderer.pdf.ITextFontResolver;
import org.xhtmlrenderer.pdf.ITextRenderer;

import com.lowagie.text.DocumentException;
import com.lowagie.text.pdf.BaseFont;


public class HtmlToPdf {
	public static void main(String[] args) {
		OutputStream os = null;
		try {
			File f = new File("E:/Test");
			if (!f.exists()) {
				f.mkdir();
			}
			
			os = new FileOutputStream("E:/Test/file.pdf");
			
			ITextRenderer renderer = new ITextRenderer();
			ITextFontResolver fontResolver = renderer.getFontResolver();
			fontResolver.addFont("C:/Windows/fonts/simsun.ttc",BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);
		
			 StringBuffer html = new StringBuffer(); html.append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">");
			 html.append("<html xmlns=\"http://www.w3.org/1999/xhtml\">");
			 html.append("<head>"); 
			 html.append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"/>"); 
			 html.append("<style type=\"text/css\">body {font-family:SimSun;}</style>"); 
			 html.append("</head>");
			 html.append("<body>"); 
			 html.append("<div>支持中文</div>");
			 html.append("</body>"); 
			 html.append("</html>");
			
			renderer.setDocumentFromString(html.toString());			
			renderer.layout();
			renderer.createPDF(os);
			System.out.println("转换成功=======");
		} catch (FileNotFoundException er) {
			er.printStackTrace();
		} catch (DocumentException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
