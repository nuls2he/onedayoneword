package org.odow.domain;

import lombok.Data;

@Data
public class Content {
	private int no;
	private String title;
	private String writer;
	private String content;
	
	private String path;
}
