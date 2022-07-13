package com.happy.app.action;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.happy.app.action.Action;
import com.happy.app.action.ActionForward;
import com.happy.app.dao.TourlistDAO;
import com.happy.app.dto.TourlistDTO;

public class AddTourlistAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("AddTourlistAction 도착");
		ActionForward forward = new ActionForward();
		TourlistDAO tdao = new TourlistDAO();
		
//		tdao.delete();
		String[] Tourlist = req.getParameterValues("list");
		
		List<TourlistDTO> tdtos = new ArrayList<TourlistDTO>();
		
		for( int i = 0; i < Tourlist.length; i++ ) {
			String[] tmp = Tourlist[i].split(";");
			System.out.println(Arrays.toString(tmp));
			
			TourlistDTO tdto = new TourlistDTO(tmp[0], Integer.parseInt(tmp[1]), Integer.parseInt(tmp[2]), tmp[3], Integer.parseInt(tmp[4]), tmp[5]);
			
			tdtos.add(tdto);
		}
		
		tdao.AddTourlist(tdtos);
		
		forward.setRedirect(true);
		forward.setPath( req.getContextPath() + "/tour/tourlist.jsp");
		
		return forward;
	}
}
