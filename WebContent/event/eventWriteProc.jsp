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
<title>eventWriteProc</title>
</head>
<body>
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
	
	
	if(!fileName.endsWith(".jpg") && !fileName.endsWith(".png")){
		File file = new File(directory + fileRealName);
		file.delete();
		out.write("업로드할 수 없는 확장자입니다.");
	} else{
		new EBoardDAO().insertBoard(fileName, fileRealName, title, subtitle, term, content);
		
		out.write("파일명: " + fileName + "<br>");
		out.write("실제 파일명: " + fileRealName + "<br>");
	}
	
	response.sendRedirect("eventmain.jsp");
	
%>
</body>
</html>