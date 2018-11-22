package kr.co.bigpic.controller;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.web.multipart.MultipartFile;

public class FileValidator implements Validator{
	
	@Override
	public boolean supports(Class<?> clazz) {
		
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		// 검사 대상 : target
		// 발생하는 에러 : errors
		UploadFile file = (UploadFile)target;
		MultipartFile mf = file.getFile();
		
		if(mf.getSize()==0) {
			errors.rejectValue("file", null,"NEED REAL FILE");
		}else if(mf.getSize()>104857600) {
			errors.rejectValue("file",null, "Need Smaller file than 100MB");
		}
	}

}
