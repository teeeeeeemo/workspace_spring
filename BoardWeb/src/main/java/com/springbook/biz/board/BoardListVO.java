package com.springbook.biz.board;

import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

//XML 문서는 반드시 단 하나의 루트 엘리먼트를 가져야 한다. 
//BoardVO 는 하나의 게시글 정보를 저장하려고 사용하는 객체이다.
//여러 게시글 목록을 XML로 표현해야 하므로 BoardVO 객체 여러개를 포함하면서 루트 엘리먼트로 사용할 
//BoardListVO클래스 !!!

@XmlRootElement(name = "boardList")
@XmlAccessorType(XmlAccessType.FIELD)
public class BoardListVO {
	
	@XmlElement(name = "board")
	private List<BoardVO> boardList;
	
	public List<BoardVO> getBoardList() {
		return boardList;
	}
	
	public void setBoardList(List<BoardVO> boardList) {
		this.boardList = boardList;
	}

}
