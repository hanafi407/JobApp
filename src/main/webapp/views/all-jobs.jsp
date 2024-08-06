<%@ page import="java.util.List" %>
<%@ page import="com.hanafi.jobapp.model.JobPost" %>
<%@ page import="java.util.Collections" %>
<%@ page import="java.util.ArrayList" %>
<%@include file="myTemplate/header.jsp" %>
<%@include file="myTemplate/nav-bar.jsp" %>
<%
    List<JobPost> jobs = (List<JobPost>) request.getAttribute("jobs");
    Collections.reverse(jobs);

%>
<div class="container">
    <h2 class="text-center">All Jobs List</h2>
    <div class="row mt-FF3">
        <% for (JobPost job : jobs) { %>
        <div class="col-12 col-sm-6 col-lg-4 mb-3">
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
                            <%
                                List<String > languages=new ArrayList<>(job.getLanguages());
                                Collections.reverse(languages);
                            %>
                            <ol>
                                <% for (String language : job.getLanguages()) {%>
                                <li><%= language %></li>
                                <% }%>
                            </ol>
                        </div>
                    </li>
                </ol>
            </div>
        </div>
        <% }%>
    </div>
</div>

<%@include file="myTemplate/footer.jsp" %>