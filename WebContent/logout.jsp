<%
	session.removeAttribute("user");
	session.invalidate();
	response.sendRedirect("prep_log_form.htm");
%>