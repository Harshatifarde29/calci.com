<html>
<head>
<style>

*{font-size:40px;font-family:Cambria;}
body{background-color:rgba(255, 99, 71, 0.5);}
</style>

<title>calci app</title>
<link rel="icon" href="favicon.ico"/>
</head>
<body>
<center>

<h1>Calci App</h1>
<form>

<input type="number"step="any"placeholder="enter first no" name="n1"required/>
<br/><br/>
<input type="number"step="any"placeholder="enter second no" name="n2"required/>
<br/><br/>

<input type="radio"name="op"value="add" checked=true/>Add
<input type="radio"name="op"value="sub" />Sub
<input type="radio"name="op"value="mul" />Mul
<br/><br/>

<input type="submit"name="btn"value="Find"/>


</form>
<%

if(request.getParameter("btn")!=null)
{
double n1=Double.parseDouble(request.getParameter("n1"));
double n2=Double.parseDouble(request.getParameter("n2"));
String op=request.getParameter("op");
if(op.equals("add"))
{
double res=n1+n2;
String msg="result of addiyiom is="+String.format("%.2f",res);
out.println(msg);
}
else if(op.equals("sub"))
{
double res=n1-n2;
String msg="result of subtraction is="+String.format("%.2f",res);
out.println(msg);

}
else if(op.equals("mul"))
{
double res=n1*n2;
String msg="result of multiplication is="+String.format("%.2f",res);
out.println(msg);

}
}

%>

</center>

</body>

</html>