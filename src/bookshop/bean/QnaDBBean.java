package bookshop.bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class QnaDBBean {
	private static QnaDBBean instance = new QnaDBBean();

	// .jsp페이지에서 DB연동빈인 BoardDBBean 클래스의 메소드에 접근시 필요
	public static QnaDBBean getInstance() {
		return instance;
	}

	private QnaDBBean() {

	}

	// 커넥션 풀로부터 Connection 객체를 얻어냄
	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/Oracle11g");
		return ds.getConnection();
	}

	// qna테이블에 글을 추가- 사용자가 작성하는 글
	public int insertArticle(QnaDataBean article) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int x = 0;
		String sql = "";
		int group_id = 1;

		try {
			conn = getConnection();

			pstmt = conn.prepareStatement("select max(qna_id)from qna");
			rs = pstmt.executeQuery();

			if (rs.next()) {
				x = rs.getInt(1);
			}
			if (x > 0) {
				group_id = rs.getInt(1) + 1;
			}

			// 쿼리를 작성 : board 테이블에 새로운 레코드 추가
			sql = "insert into qna(book_id, book_title, qna_writer, qna_content,";
			sql += "group_id,qora,reply,reg_date) values(?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, article.getBook_id());
			pstmt.setString(2, article.getBook_title());
			pstmt.setString(3, article.getQna_writer());
			pstmt.setString(4, article.getQna_content());
			pstmt.setInt(5, group_id);
			pstmt.setInt(6, article.getQora());
			pstmt.setInt(7, article.getReply());
			pstmt.setTimestamp(8, article.getReg_date());
			pstmt.executeUpdate();

			x = 1;// 레코드 추가 성공
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			}
		}
		return x;
	}

	// qna 테이블에 글을 추가 - 관리자가 작성한 답변
	public int insertArticle(QnaDataBean article, int qna_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int x = 0;
		String sql = "";

		try {
			conn = getConnection();

			// 쿼리를 작성 :board 테이블에 새로운 레코드 추가
			sql = "insert into qna(book_id, book_title, qna_writer, qna_content,";
			sql += "group_id,qora,reply,reg_date) values(?,?,?,?,?,?,?,?)";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, article.getBook_id());
			pstmt.setString(2, article.getBook_title());
			pstmt.setString(3, article.getQna_writer());
			pstmt.setString(4, article.getQna_content());
			pstmt.setInt(5, article.getGroup_id());
			pstmt.setInt(6, article.getQora());
			pstmt.setInt(7, article.getReply());
			pstmt.setTimestamp(8, article.getReg_date());
			pstmt.executeUpdate();

			sql = "update qna set reply=? where qna_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, 1);
			pstmt.setInt(2, qna_id);
			pstmt.executeUpdate();

			x = 1;// 레코드 추가 성공

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			}
		}
		return x;
	}
	
	//qna 테이블에 저장된 전체 글의수를 얻어냄
	public int getArticleCount(){
		
	}

}