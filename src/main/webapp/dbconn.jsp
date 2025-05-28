<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*"%>
 <%
 Connection conn = null;
 String url = "jdbc:oracle:thin:@211.210.75.86:1521:XE";
 String user = "AT0002";
 String password = "AT0002";
 Class.forName("oracle.jdbc.driver.OracleDriver");
 conn = DriverManager.getConnection(url, user, password);
 %>
