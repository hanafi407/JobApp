<%@ page import="java.util.List" %>
<%@include file="myTemplate/header.jsp" %>
<%@include file="myTemplate/nav-bar.jsp" %>

<%
    List<String> listLanguage = List.of("Php", "Core Java", "JavaScript", "Dart", "HTML", "CSS", "Laravel",
            "Spring Boot", "ReactJs", "Flutter", "J2EE", "Spring Boot", "Hibernate)", "Python",
            "Machine Learning", "Data Analysis", "Networking", "Cisco", "Routing", "Switching", "iOS Development",
            "Android Development", "Mobile App", "DevOps", "CI/CD", "Docker", "Kubernetes"


    );
%>
<div class="container">
    <div class="row justify-content-center">
        <h2 class="text-center">Add Job</h2>
        <div class="card mt-3 col-12 col-sm-10  col-lg-8">
            <div class="card-body">
                <form action="handle-form" method="post">
                    <div class=" mb-3">
                        <label for="id">ID</label>
                        <input type="number" class="form-control" id="id" placeholder="Input id..." name="id">
                    </div>
                    <div class="mb-3">
                        <label for="profile">Profile</label>
                        <input type="text" class="form-control" id="profile" placeholder="Input profile..." name="profile">
                    </div>
                    <div class=" mb-3">
                        <label for="description" class="form-label">Description</label>
                        <textarea class="form-control" id="description" rows="3" name="description" placeholder="Input description..."></textarea>
                    </div>

                    <div class="mb-3">
                        <label class="form-label" for="experience">Experience(In Years)</label>
                        <input type="number" class="form-control" id="experience" placeholder="Input experience..." name="experience">
                    </div>
                    <div class="mb-3 card">
                        <div class="card-header">Tech Stack</div>
                        <div class="card-body d-flex flex-column flex-wrap overflow-auto" style="height: 27vh">
                            <% for (String language : listLanguage) { %>
                            <div class="form-check m-1">
                                <input name="languages" class="form-check-input" type="checkbox"
                                       value="<%= language  %>"
                                       id="<%= language  %>">
                                <label class="form-check-label" for="<%= language  %>">
                                    <%= language  %>
                                </label>
                            </div>
                            <% } %>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>
<%@include file="myTemplate/footer.jsp" %>