<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{fyrirtaeki}}</title>
</head>
<body>
<h1>Bensínstöðvar</h1>
<tbody>
<tr>
    <th>Fyrirtæki</th><th>Staður</th>
</tr>
<tr>
    <%
    nofn = []
    for x in data['results']:
        if x['name'] not in nofn:
            nofn.append(x['name'])
    %>
    % for c in nofn:
    <th><a href="moreinfo/{{x['key']}}">{{fyrirtaeki}}</a></th><th>{{c}}</th>
    % end
</tr>
</tbody>
</body>
</html>