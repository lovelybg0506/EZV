<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ezv.Dao.EBoardDAO"%>
<%@ page import="java.io.File"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eventUpdateProc</title>
</head>
<body>
<jsp:useBean id="boardbean" class="com.ezv.Dto.EBoardBean">
		<jsp:setProperty name="boardbean" property="*"/>
</jsp:useBean>
<%
	String directory = application.getRealPath("/upload/");
	int maxSize = 1024 * 1024 * 100;
	String encoding = "UTF-8";
	
	MultipartRequest multipartRequest
	=new MultipartRequest(request,directory,maxSize,encoding,
			new DefaultFileRenamePolicy());
	
	String fileName = multipartRequest.getOriginalFileName("file");
	String fileRealName = multipartRequest.getFilesystemName("file");
	String title=multipartRequest.getParameter("title");
	String subtitle=multipartRequest.getParameter("subtitle");
	String term=multipartRequest.getParameter("term");
	String content=multipartRequest.getParameter("content");

	int num=Integer.parseInt(multipartRequest.getParameter("num"));
	EBoardDAO dao=new EBoardDAO();
	
	if(fileName == null){
		dao.updateBoard(title,subtitle,term,content,num);
		response.sendRedirect("eventmain.jsp");
	}else{
		dao.fileUpdateBoard(fileName,fileRealName,title,subtitle,term,content,num);
		response.sendRedirect("eventmain.jsp");
	}
	
	
	
	
%>

</body>
</html>