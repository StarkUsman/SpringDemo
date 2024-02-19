<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="jquery-3.7.1.js"></script>
    <script>
        var data;
        $(document).ready(function (){
            alert("hello");
        $('#btnClick').click(function (){
            $.ajax({
                url:"/getUserByName/"+$('#uid').val(),
                // type: "POST",
                // data: $('#uid').val(),
                contentType: "application/json",
                dataType: "json",
                success: function (r){
                    data = r;
                    alert(r);
                    for (let i = 0; i < r.length; i++)  {
                        $('#myid').append('<tr>' +
                            '<td>' + r[i].namesurname + '</td>' +
                            '<td>' + r[i].email + '</td>' +
                            '<td>' + r[i].password + '</td>' +
                            '<td>' + r[i].terms + '</td>' +
                            '</tr>');
                    }
                }
            })
        })
    })</script>
</head>
<body>

<table id="myid"></table>

<h1>Operation form</h1>
<form>
    User by Id: <input id="uid" name="UId"/><br>
    <select name="ddlFlag">
        <option value="select">Select Record</option>
        <option value="delete">Delete Record</option>
        <option value="update">Update Record</option>
        <option value="custom">Custom Record</option>
        <option value="selectAll">Select All Record</option>
    </select>
    <br>
    <input id="btnClick" type="button" value="Click Now"/>
</form>
</body>
</html>