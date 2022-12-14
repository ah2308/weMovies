package com.weMovies.dto;

public class BoardDTO {

	int seq;
	String subject;
	String content;
	String name;
	String reg_date;
	int readCount;

	public BoardDTO() {

	}

	public BoardDTO(String name, int seq, String content) {
		this.name = name;
		this.seq = seq;
		this.content = content;
	}

	public BoardDTO(int seq) {
		this.seq = seq;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	public int getReadCount() {
		return readCount;
	}

	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}

	@Override
	public String toString() {
		return "BoardDTO [seq=" + seq + ", subject=" + subject + ", content=" + content + ", name=" + name
				+ ", reg_date=" + reg_date + ", readCount=" + readCount + "]";
	}

}
