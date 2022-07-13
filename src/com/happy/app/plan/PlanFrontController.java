package com.happy.app.plan;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.happy.app.action.ActionForward;
import com.happy.app.action.PlanMakeAction;
import com.happy.app.action.PlanSaveAction;

@WebServlet("*.pl")
public class PlanFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("doProcess 도착");
		
		String requestURI = req.getRequestURI();
		System.out.println("requestURI : " + requestURI);
		ActionForward forward = null;
		
		switch (requestURI) {
			case "/PlanMakeAction.pl":
				forward = new PlanMakeAction().execute(req, resp);
				break;
				
			case "/PlanSave.pl":
				forward = new PlanSaveAction().execute(req, resp);
				break;
		}
		
		if( forward != null ) {
			if( forward.isRedirect() ) {	// redirect
				resp.sendRedirect(forward.getPath());
			} else {						// forward
				RequestDispatcher disp = req.getRequestDispatcher(forward.getPath());
				disp.forward(req, resp);
			}
		}
	}
}