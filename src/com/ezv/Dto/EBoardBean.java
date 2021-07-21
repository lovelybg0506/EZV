package com.ezv.Dto;

public class EBoardBean {
	private int num;
	private String fileName;
	private String fileRealName;
	private String title;
	private String subtitle;
	private String term;
	private String content;
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileRealName() {
		return fileRealName;
	}
	public void setFileRealName(String fileRealName) {
		this.fileRealName = fileRealName;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSubtitle() {
		return subtitle;
	}
	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	@Override
	public String toString() {
		return "EBoardBean [num=" + num + ", fileName=" + fileName + ", fileRealName=" + fileRealName + ", title="
				+ title + ", subtitle=" + subtitle + ", term=" + term + ", content=" + content + "]";
	}
	
}
