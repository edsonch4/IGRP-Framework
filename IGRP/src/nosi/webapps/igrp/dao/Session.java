package nosi.webapps.igrp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import nosi.core.dao.RowDataGateway;
import nosi.core.webapp.Igrp;

/**
 * Marcel Iekiny
 * May 29, 2017
 */

public class Session implements RowDataGateway{
	  
	private int id;
	private String sessionId;
	private String startTime;
	private String endTime;
	private int userId;
	private String ipAddress;
	private String userName;
	private int envId;
	private String target;
	private int orgId;
	private int profTypeId;
	private int https; // boolean 0 or 1
	private String sessionOldId;
	private String host;
	private String hostName;
	private String mediaType;
	
	private Connection conn;	
	
	public Session() {
		this.conn = Igrp.getInstance().getDao().unwrap("db1");
	}

	@Override
	public boolean insert() {
		String sql  = "insert into glb_t_session(SESSION_ID, START_TIME, END_TIME, USER_ID, IP_ADDRESS, USER_NAME, ENV_ID, TARGET,"
				+ " ORG_ID, PROF_TYPE_ID, HTTPS, SESSION_OLD_ID, HOST, HOST_NAME, MEDIA_TYPE) "
				+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		int result = 0;
		try{
			conn.setAutoCommit(true);
			PreparedStatement ps = this.conn.prepareStatement(sql);
			ps.setString(1, this.sessionId);
			ps.setString(2, this.startTime);
			ps.setString(3, this.endTime);
			ps.setInt(4, this.userId);
			ps.setString(5, this.ipAddress);
			ps.setString(6, this.userName);
			ps.setInt(7, this.envId);
			ps.setString(8, this.target);
			ps.setInt(9, this.orgId);
			ps.setInt(10, this.profTypeId);
			ps.setInt(11, this.https);
			ps.setString(12, this.sessionOldId);
			ps.setString(13, this.host);
			ps.setString(14, this.hostName);
			ps.setString(15, this.mediaType);
			result = ps.executeUpdate();
			ps.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return result > 0;
	}

	@Override
	public Object getOne() {
		Session obj = null;
		try{
			Statement st = this.conn.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM glb_t_session where id = "+ this.id);
			
			if(rs.next()){
				obj = new Session();
				obj.id = rs.getInt("id");
				obj.sessionId = rs.getString("SESSION_ID");
				obj.startTime = rs.getString("START_TIME");
				obj.endTime = rs.getString("END_TIME");
				obj.userId = rs.getInt("USER_ID");
				obj.ipAddress = rs.getString("IP_ADDRESS");
				obj.userName = rs.getString("USER_NAME");
				obj.envId = rs.getInt("ENV_ID");
				obj.target = rs.getString("TARGET");
				obj.orgId = rs.getInt("ORG_ID");
				obj.profTypeId = rs.getInt("PROF_TYPE_ID");
				obj.https = rs.getInt("HTTPS");
				obj.sessionOldId = rs.getString("SESSION_OLD_ID");
				obj.host = rs.getString("HOST");
				obj.hostName = rs.getString("HOST_NAME");
				obj.mediaType = rs.getString("MEDIA_TYPE");
			}
			
			st.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		return obj;
	}

	@Override
	public boolean update(){ // Load the data first
		int result = 0;
		try{
			this.conn.setAutoCommit(true);
			PreparedStatement ps = this.conn.prepareStatement("update glb_t_session set "
					+ "SESSION_ID = ?, "
					+ "START_TIME = ?, "
					+ " END_TIME = ?,"
					+ " USER_ID = ?,"
					+ " IP_ADDRESS = ?,"
					+ " USER_NAME = ?,"
					+ " ENV_ID = ?,"
					+ " TARGET = ?,"
					+ " ORG_ID = ?,"
					+ " PROF_TYPE_ID = ?,"
					+ " HTTPS = ?,"
					+ " SESSION_OLD_ID = ?,"
					+ " HOST = ?,"
					+ " HOST_NAME = ?,"
					+ " MEDIA_TYPE = ?, "
					+ " where id = ?");
			
			ps.setString(1, this.sessionId);
			ps.setString(2, this.startTime);
			ps.setString(3, this.endTime);
			ps.setInt(4, this.userId);
			ps.setString(5, this.ipAddress);
			ps.setString(6, this.userName);
			ps.setInt(7, this.envId);
			ps.setString(8, this.target);
			ps.setInt(9, this.orgId);
			ps.setInt(10, this.profTypeId);
			ps.setInt(11, this.https);
			ps.setString(12, this.sessionOldId);
			ps.setString(13, this.host);
			ps.setString(14, this.hostName);
			ps.setString(15, this.mediaType);
			ps.setInt(16, this.id);
			
			result = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		return result > 0;
	}

	@Override
	public boolean delete() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Object[] getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSessionId() {
		return sessionId;
	}

	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getIpAddress() {
		return ipAddress;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getEnvId() {
		return envId;
	}

	public void setEnvId(int envId) {
		this.envId = envId;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}

	public int getOrgId() {
		return orgId;
	}

	public void setOrgId(int orgId) {
		this.orgId = orgId;
	}

	public int getProfTypeId() {
		return profTypeId;
	}

	public void setProfTypeId(int profTypeId) {
		this.profTypeId = profTypeId;
	}

	public int getHttps() {
		return https;
	}

	public void setHttps(int https) {
		this.https = https;
	}

	public String getSessionOldId() {
		return sessionOldId;
	}

	public void setSessionOldId(String sessionOldId) {
		this.sessionOldId = sessionOldId;
	}

	public String getHost() {
		return host;
	}

	public void setHost(String host) {
		this.host = host;
	}

	public String getHostName() {
		return hostName;
	}

	public void setHostName(String hostName) {
		this.hostName = hostName;
	}

	public String getMediaType() {
		return mediaType;
	}

	public void setMediaType(String mediaType) {
		this.mediaType = mediaType;
	}

	public Connection getConn() {
		return conn;
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}

	@Override
	public String toString() {
		return "Session [id=" + id + ", sessionId=" + sessionId + ", startTime=" + startTime + ", endTime=" + endTime
				+ ", userId=" + userId + ", ipAddress=" + ipAddress + ", userName=" + userName + ", envId=" + envId
				+ ", target=" + target + ", orgId=" + orgId + ", profTypeId=" + profTypeId + ", https=" + https
				+ ", sessionOldId=" + sessionOldId + ", host=" + host + ", hostName=" + hostName + ", mediaType="
				+ mediaType + ", conn=" + conn + "]";
	}
	
}