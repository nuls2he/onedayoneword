package org.odow.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Keyword {
	private int kno;
	private int ono;
	private String keyword;
	private Date regdate;
	private int siteno;
}
