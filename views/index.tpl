<!doctype html>
<html lang="is">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Miðannarverkefni</title>
    <link type="text/css" href="/static/stylesheet.css" rel="stylesheet">
</head>
<body>
<h1>Söluaðilar eldsneytis á Íslandi</h1>
<div>
% ft = []
% teljari = 0
% for x in data['results']:
%   if x['company'] not in ft:
%       ft.append(x['company'])
        <div class="box">
            <a href="company/{{x['company']}}">{{ft[teljari]}}</a>
    </div>
%   teljari += 1
% end
% end
</div>
<%
odyrastb = 1000
odyrastbfyr = ''
odyrastd = 1000
odyrastdfyr = ''

for x in data['results']:
    if x['bensin95'] < odyrastb:
        odyrastb = x['bensin95']
        odyrastbfyr = x['company']
    if x['diesel'] < odyrastd:
        odyrastd = x['diesel']
        odyrastdfyr = x['company']
    end
    end
end
%>
<h4>Ódýrasta bensín: <b><i>{{odyrastb}} kr.</i></b> hjá {{odyrastbfyr}}</h4>
<h4>Ódýrasta díesel: <b><i>{{odyrastd}} kr.</i></b> hjá {{odyrastdfyr}}</h4>
<h5>Síðast uppfært: 22.02 2018 Kl. 12:45</h5>
</body>
</html>