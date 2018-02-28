<html lang="is">
<head>
    <meta charset="UTF-8">
    <title>{{fyrirtaeki}}</title>
    <link type="text/css" href="/static/stylesheet.css" rel="stylesheet">
</head>
<body>
<h1 class="titill">Bensínstöðvar</h1>
<table>
    <tbody>
        <tr>
            <th>Fyrirtæki</th>
            <th>Staður</th>
        </tr>
        % teljari = 0
        % nofn = []
        % numer = []
        % for x in data['results']:
        %   if x['name'] not in nofn and x['company'] == fyrirtaeki:
        %       nofn.append(x['name'])
        %       numer.append(x['key'])
        % end
        % end

        % teljari = 0
        % for n in numer:
        <tr>
            <td>
                <a href="../moreinfo/{{n}}">{{fyrirtaeki}}</a>
            </td>
            <td>{{nofn[teljari]}}</td>
        </tr>
        %teljari += 1
        % end

    </tbody>
</table>
<h3>Fjöldi stöðva: {{teljari}}</h3>
<center><a href="/">Heim</a></center>
</body>
</html>
