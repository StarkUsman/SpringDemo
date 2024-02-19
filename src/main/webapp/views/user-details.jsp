<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="jquery-3.7.1.js"></script>
</head>
<body>
<button id="refresh" value="refresh">Refresh</button>
<br>
<br>
<table>
    <thead>
    <tr>
        <th>UserName</th>
        <th>Email</th>
        <th>Password</th>
        <th>Terms</th>
    </tr>
    </thead>
    <tbody id="tableBody">
    </tbody>
</table>

<script>
    var data;
    $(document).ready(function (){
        alert("hello");
        // $('#refresh').click(function (){
            $.ajax({
                url:"/getAllUsers/",
                // type: "POST",
                // data: $('#uid').val(),
                contentType: "application/json",
                dataType: "json",
                success: function (r){
                    data = r;
                    alert(r[0].namesurname);
                    for (let i = 0; i < r.length; i++)  {
                        $('#tableBody').append('<tr>' +
                            '<td>' + r[i].namesurname + '</td>' +
                            '<td>' + r[i].email + '</td>' +
                            '<td>' + r[i].password + '</td>' +
                            '<td>' + r[i].terms + '</td>' +
                            '</tr>');
                    }
                }
            })
        // })
    })</script>
</body>
</html>
