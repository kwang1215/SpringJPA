package jdbcUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.BoardVO;

// ** Board Table 의 CRUD 구현
// => selectList, selectOne, insert, update, delete 
@Repository
public class BoardDAO {
	@PersistenceContext // 객체 주입시 사용하는 어노테이션
	private EntityManager eManager;
	
	// selectList
	public List<BoardVO> selectList() {
		return eManager.createQuery("from BoardVO order by root desc, step asc").getResultList();
	} // selectList
	
	public BoardVO selectOne(BoardVO vo) {
		return eManager.find(BoardVO.class, vo.getSeq());
	} // selectOne
	
} // class
