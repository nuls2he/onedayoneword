package org.odow.content.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

import javax.annotation.Resource;

import org.apache.commons.io.IOUtils;
import org.odow.content.service.ContentService;
import org.odow.util.MediaUtils;
import org.odow.util.UploadFileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/oneday/*")
public class OneDayController {
	
	@Autowired
	private ContentService service;
	
	@RequestMapping("/insert")
	public void insertData() {

	}
	
	@GetMapping("/detail")
	public void detail(@RequestParam("no")int no, Model model) {
		model.addAttribute("no", no);
	}
	
	@PostMapping("/detail")
	public void detailPost() {
		
	}
	
	@GetMapping("/modify")
	public void modify(@RequestParam("no")int no, Model model) {
		model.addAttribute("no", no);
	}
	
	@Resource(name = "uploadPath")
	private String uploadPath;

	@RequestMapping(value = "/uploadAjax", method = RequestMethod.GET)
	public void uploadAjax(){

	}

	@ResponseBody
	@RequestMapping(value ="/uploadAjax", method=RequestMethod.POST, 
	produces = "text/plain;charset=UTF-8")
	public ResponseEntity<String> uploadAjax(MultipartFile file)throws Exception{

		log.info("originalName: " + file.getOriginalFilename());


		return 
				new ResponseEntity<>(
						UploadFileUtils.uploadFile(uploadPath, 
								file.getOriginalFilename(), 
								file.getBytes()), 
						HttpStatus.CREATED);
	}
	
	@ResponseBody
	@RequestMapping("/displayFile")
	public ResponseEntity<byte[]>  displayFile(String fileName)throws Exception{

		InputStream in = null; 
		ResponseEntity<byte[]> entity = null;

		log.info("uploadPath : " + uploadPath);
		log.info("FILE NAME: " + fileName);

		try{

			String formatName = fileName.substring(fileName.lastIndexOf(".")+1);

			MediaType mType = MediaUtils.getMediaType(formatName);

			HttpHeaders headers = new HttpHeaders();

			in = new FileInputStream(uploadPath+fileName);

			if(mType != null){
				headers.setContentType(mType);
			}else{

				fileName = fileName.substring(fileName.indexOf("_")+1);       
				headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
				headers.add("Content-Disposition", "attachment; filename=\""+ 
						new String(fileName.getBytes("UTF-8"), "ISO-8859-1")+"\"");
			}

			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), 
					headers, 
					HttpStatus.CREATED);
		}catch(Exception e){
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		}finally{
			in.close();
		}
		return entity;    
	}
	  
	  @ResponseBody
	  @RequestMapping(value="/deleteFile", method=RequestMethod.POST)
	  public ResponseEntity<String> deleteFile(String fileName){

		  log.info("delete file: "+ fileName);

		  String formatName = fileName.substring(fileName.lastIndexOf(".")+1);

		  MediaType mType = MediaUtils.getMediaType(formatName);

		  if(mType != null){      

			  String front = fileName.substring(0,12);
			  String end = fileName.substring(14);
			  log.info("front : " + front);
			  log.info("end : " + end);
			  new File(uploadPath + (front+end).replace('/', File.separatorChar)).delete();
		  }

		  new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();


		  return new ResponseEntity<String>("deleted", HttpStatus.OK);
	  }  
}
