<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="header">
	<ul>
		<li><a href="index">Home</a></li>
		<c:if test="${user.loggedIn && user.admin}">
			<li><a href="#">Admin</a>
				<ul>
					<c:if test="${user.permissions.addUser}">
						<li><a href="admin.addUser">Add User</a></li>
					</c:if>
					<c:if test="${user.permissions.modifyUser}">
						<li><a href="admin.modifyUser">Modify User</a></li>
					</c:if>
					<c:if test="${user.permissions.createPerms}">
						<li><a href="dev.createPerm">Create Perm</a></li>
					</c:if>
				</ul></li>
		</c:if>
		<c:if test="${user.loggedIn}">
			<li class="last"><a href="#">Logged in as ${user.name}</a>
				<ul>
					<c:if test="${user.permissions.changePass}">
						<li><a href="account.changePass">Change Password</a></li>
					</c:if>
					<li><a href="logout">Logout</a></li>
				</ul></li>
		</c:if>
		<c:if test="${!user.loggedIn}">
			<li class="last"><a href="login">Log in</a></li>
		</c:if>
	</ul>
	<br>
	<br>
</div>