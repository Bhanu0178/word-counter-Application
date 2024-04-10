<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Word Counter App</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</head>
<body>
	<%
		int countvalue = (int)request.getAttribute("countvalue");
	%>
	<section>
    <div class="container-fluid">
        <div class="row text-center justify-content-center align-items-center" style="min-height: 100vh;">
            <div class="col col-lg-4">
                <div class="row">
                    <div class="col">
                        <div class="card" style="padding: 3rem; background-color: #F1EFEF; border: none;">
                            <div class="card-body">
                                <h5 class="card-title fw-bold fs-2">Total Words</h5>
                                <a class="btn btn-secondary mt-4 fw-bold" style="padding: 0.4rem 2rem; cursor:default;"><%=countvalue %></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>