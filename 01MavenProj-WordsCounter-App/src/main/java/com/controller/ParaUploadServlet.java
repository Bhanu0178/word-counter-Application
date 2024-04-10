package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/paraupload")

public class ParaUploadServlet extends HttpServlet 
{
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
	throws ServletException, IOException
	{
		String para = req.getParameter("para");
		int count = 1;
		for(int i = 0; i<para.length(); i++)
		{
			int  a = para.charAt(i);
			if(a==32)
			{
				count++;
			}//end of if
		}//end of loop
		req.setAttribute("countvalue", count);
		req.getRequestDispatcher("ParaUploadJsp.jsp").forward(req, res);
	}
}

