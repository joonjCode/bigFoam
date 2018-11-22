package kr.co.bigpic.controller;

import org.springframework.web.multipart.MultipartFile;

public class UploadFile {
	private MultipartFile file;

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	
}
