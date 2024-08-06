<%@ page import="com.hanafi.jobapp.model.JobPost" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@include file="myTemplate/header.jsp" %>
<%@include file="myTemplate/nav-bar.jsp" %>
<%
    JobPost job = (JobPost) request.getAttribute("jobPost");
%>
<div class="row mt-3 justify-content-center">
    <div class="col-12 col-sm-10 col-lg-3">
        <div class="card">
            <div class="card-body"><%= job.getProfile()%>
            </div>
            <ol class="list-group ">
                <li class="list-group-item d-flex justify-content-between align-items-start">
                    <div class="ms-2 me-auto">
                        <div class="fw-bold">Description:</div>
                        <%= job.getDescription()%>
                    </div>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-start">
                    <div class="ms-2 me-auto">
                        <div class="fw-bold">Experience:</div>
                        <%= job.getExperience()%> Year(s)
                    </div>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-start">
                    <div class="ms-2 me-auto">
                        <div class="fw-bold">Tech Stack:</div>
                        <ol>
                            <c:forEach var="language" items="<%= job.getLanguages()%>">
                                <li>${language}</li>
                            </c:forEach>
                        </ol>
                    </div>
                </li>
            </ol>
        </div>

        <%--        <div class="card ">--%>
        <%--            <div class="card-header">--%>
        <%--                <%= job.getProfile()%>--%>
        <%--            </div>--%>
        <%--            <ul class="list-group list-group-flush">--%>
        <%--                <li class="list-group-item"><strong>Description: </strong><%= job.getDescription()%></li>--%>
        <%--                <li class="list-group-item"><strong>Experience: </strong><%= job.getExperience()%> year(s).</li>--%>
        <%--                <li class="list-group-item">--%>
        <%--                    <strong>Teck Stack:</strong>--%>
        <%--                    <ul>--%>
        <%--                        <c:forEach var="language" items="<%= job.getLanguages()%>">--%>
        <%--                        <li>${language}</li>--%>
        <%--                        </c:forEach>--%>
        <%--                    </ul>--%>
        <%--                </li>--%>
        <%--            </ul>--%>
        <%--        </div>--%>
    </div>
</div>
<%@include file="myTemplate/footer.jsp" %>