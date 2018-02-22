<!doctype html>
<html lang="is">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link type="text/css" href="/static/stylesheet.css" rel="stylesheet">
    <title>Verð</title>
</head>
<%
soluad = ""
stadur = ""
bensin = ""
disel = ""
for x in data['results']:
    if stod == x['key']:
        soluad = x['company']
        stadur = x['name']
        bensin = x['bensin95']
        disel = x['diesel']
    end
end
%>
<body>
    <div class="info">
        <div class="vinstri">
        <h1>Nánari upplýsingar</h1>
        <h3>Söluaðili: {{soluad}}</h3>
        <h3>Staður: {{stadur}}</h3>
        <h3>Bensín {{bensin}}</h3>
        <h3>Dísel: {{disel}}</h3>
        <br>
        <center><a href="/">Heim</a></center>
        <br>
        </div>
        <div class="haegri">
            <img src="/static/{{soluad}}.png"></img>
        </div>


    </div>

</body>
</html>