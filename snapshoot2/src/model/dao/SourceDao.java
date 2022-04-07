package model.dao;

import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import connection.DbManager;
import model.bean.Source;
import utils.sqlUtils;

public class SourceDao {
	private Connection connection;
	private ResultSet rs;
	private Statement st;
	private PreparedStatement pst;

	public SourceDao() {
		connection = DbManager.getConnection();
	}

	public List<Source> getAll() {
		List<Source> sources = new ArrayList<Source>();
		String query = "select * from source";
		try {
			st = connection.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Source source = new Source(rs.getInt("id"), rs.getString("filename"), rs.getBoolean("status"),
						rs.getString("username"));
				sources.add(source);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			sqlUtils.close(rs, st);
		}
		return sources;
	}

	public List<Source> get(String username) {
		List<Source> sources = new ArrayList<Source>();
		String query = "select * from source where username=?";
		try {
			pst = connection.prepareStatement(query);
			pst.setString(1, username);
			rs = pst.executeQuery();
			while (rs.next()) {
				Source source = new Source(rs.getInt("id"), rs.getString("filename"), rs.getBoolean("status"),
						rs.getString("username"));
				sources.add(source);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			sqlUtils.close(rs, pst);
		}
		return sources;
	}

	public Source getSource(int id) {
		Source source = null;
		String query = "select * from source where id=?";
		try {
			pst = connection.prepareStatement(query);
			pst.setInt(1, id);
			rs = pst.executeQuery();
			while (rs.next()) {
				Blob blob = rs.getBlob("doc");
				source = new Source(rs.getString("filename"), blob.getBytes(1, (int) blob.length()));
				blob.free();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			sqlUtils.close(rs, pst);
		}
		return source;
	}

	public byte[] get(int id) {
		byte[] requestData = null;
		String query = "select * from source where id=?";
		try {
			pst = connection.prepareStatement(query);
			pst.setInt(1, id);
			rs = pst.executeQuery();
			while (rs.next()) {
				Blob blob = rs.getBlob("pdf");
				requestData = blob.getBytes(1, (int) blob.length());
				blob.free();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			sqlUtils.close(rs, pst);
		}
		return requestData;
	}

	public boolean save(InputStream is, Source source) {
		try {
			pst = connection.prepareStatement("insert into source(filename,pdf,status,username) values(?,?,?,?)");
			pst.setString(1, source.getFilename());
			pst.setBlob(2, is);
			pst.setBoolean(3, source.isStatus());
			pst.setString(4, source.getUsername());
			int affectesRows = pst.executeUpdate();
			return affectesRows > 0;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			sqlUtils.close(pst);
		}
		return false;
	}

	public boolean delete(int id) {
		String query = "delete from source where id=?";
		try {
			pst = connection.prepareStatement(query);
			pst.setInt(1, id);
			if (pst.executeUpdate() > 0) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			sqlUtils.close(pst);
		}
		return false;
	}

}
