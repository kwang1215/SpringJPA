package service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jdbcUtil.BoardDAO;
import vo.BoardVO;

//** interface 자동완성
//=> alt + shift + T

@Service
public class BServiceImpl implements Bservice {

	@Autowired
	BoardDAO dao ;
	
	
	
	@Override
	public List<BoardVO>selectList() {
		return dao.selectList();
	}
	
	@Override
	public BoardVO selectOne(BoardVO vo) {
		return dao.selectOne(vo);
	}
	
	
	
} // service
