def tocsv($x):
    $x
    |(map(keys)
        |add
        |unique
        |sort
    ) as $cols
    |map(. as $row
        |$cols
        |map($row[.]|tostring)
    ) as $rows
    |$cols,$rows[]
    | @csv;

# call this <tweets.json jq  -s  -S  '[.[] | {name:  .user.name, sn: .user.screen_name, loc: .user.location, url:.user.url, desc:.user.description, _fol: .user.followers_count }]'   | jq  -f -r to_csv.jq
tocsv(.)
