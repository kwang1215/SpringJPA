package service;

import java.util.ArrayList;
import java.util.List;

import vo.BoardVO;

public interface Bservice {
	
	

	List<BoardVO> selectList();

	BoardVO selectOne(BoardVO vo);


}