<%--
  Created by IntelliJ IDEA.
  User: wallius
  Date: 7/23/21
  Time: 2:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<div id="edit-view" class="view">
    <div class="bar-action">
        <span class="bar-title">Employee detail</span>
    </div>

    <form id="add-form" action="<%= request.getContextPath()%>/employee/${detail.id}">
        <table>
            <tbody>
            <tr>
                <td class="required">ID</td>
                <td><div>${detail.id}</div></td>
            </tr>
            <tr>
                <td class="required">Full name</td>
                <td><input name="name" type="text" placeholder="Enter full name" value="${detail.name}"></td>
            </tr>
            <tr>
                <td class="required">Phone number</td>
                <td><input name="phone" type="text" placeholder="Enter phone number" value="${detail.phone}"></td>
            </tr>
            <tr>
                <td class="required">Date of birth</td>
                <td><input name="dob" type="date" placeholder="Enter date of birth" value="${detail.dob}"></td>
            </tr>
            <tr>
                <td class="required">Sex</td>
                <td>
                    <label class="radio-btn-cont">
                        <input type="radio" name="sex" value="0" <c:if test="${detail.sex eq false}">checked</c:if>>
                        <div class="radio-btn">
                            <div class="radio-btn-dot"></div>
                        </div>
                        <span class="radio-btn-label">Male</span>
                    </label>
                    <label class="radio-btn-cont">
                        <input type="radio" name="sex" value="1" <c:if test="${detail.sex eq true}">checked</c:if>>
                        <div class="radio-btn">
                            <div class="radio-btn-dot"></div>
                        </div>
                        <span class="radio-btn-label">Female</span>
                    </label>
                </td>
            </tr>
            <tr>
                <td>Address</td>
                <td><input name="address" type="text" placeholder="Enter address" value="${detail.address}"></td>
            </tr>
            <tr>
                <td>E-mail</td>
                <td><input name="email" type="text" placeholder="Enter e-mail" value="${detail.email}"></td>
            </tr>
            <tr>
                <td class="required">Account</td>
                <td><input name="account" type="text" placeholder="Enter account" value="${detail.account}"></td>
            </tr>
            <tr>
                <td class="required">Password</td>
                <td><input name="password" type="password" placeholder="Enter password"></td>
            </tr>
            <tr>
                <td class="required">Department</td>
                <td>
                    <select name="depId">
                        <option disabled>Select department</option>
                        <c:forEach items="${departmentList}" var="department">
                            <option value="${department.id}" <c:if test="${department.id eq detail.departmentId}">selected</c:if> >${department.name}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            </tbody>
        </table>
        <div>
            <button type="reset" id="reset-form-button" class="icon-button align-left">
                <i class="material-icons-round">restart_alt</i>
                <span class="button-label">Reset</span>
            </button>
            <button type="button" id="submit-form-button" class="icon-button align-right" onclick="submitUpdForm()">
                <i class="material-icons-round">login</i>
                <span class="button-label">Submit</span>
            </button>
        </div>
    </form>
</div>