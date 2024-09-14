curl -X PUT -H "Content-Type: application/json" -d '{"releasedate": 2016,"runningtime": "1:15","genre": "comedy"}' http://riak:8098/riak/movies/TheLordOfTheRings

curl -X PUT -H "Content-Type: application/json" -d '{"releasedate": 2016,"runningtime": "1:30","genre": "drama"}' http://riak:8098/riak/movies/Moonlight

curl -X PUT -H "Content-Type: application/json" -d '{"releasedate": 2016,"runningtime": "1:45","genre": "horror"}' http://riak:8098/riak/movies/GetOut

curl -X PUT -H "Content-Type: application/json" -d '{"releasedate": 2016,"runningtime": "2:00","genre": "comedy"}' http://riak:8098/riak/movies/22JumpStreet

curl -X PUT -H "Content-Type: application/json"-d '{"releasedate": 2016,"runningtime": "2:15","genre": "drama"}' http://riak:8098/riak/movies/ManchesterByTheSea

curl -X PUT -H "Content-Type: application/json" -d '{"releasedate": 2016,"runningtime": "2:30","genre": "horror"}' http://riak:8098/riak/movies/TheConjuring2

curl -X DELETE http://riak:8098/riak/movies/TheConjuring2

curl -X PUT -H "Content-Type: application/json" -d '{"branch": "East"}' http://riak:8098/riak/branches/East

curl -X PUT -H "Content-Type: application/json" -d '{"branch": "West"}' http://riak:8098/riak/branches/West

curl -X PUT -H "Content-Type: application/json" -d '{"branch": "South"}' http://riak:8098/riak/branches/South

curl -X PUT -H "Content-Type: application/json" -d '{"movies": ["TheLordOfTheRings", "Moonlight", "22JumpStreet"]}' http://riak:8098/riak/branches/East

curl -X PUT -H "Content-Type: application/json" -d '{"movies": ["Moonlight", "ManchesterByTheSea"]}' http://riak:8098/riak/branches/West

curl -X PUT -H "Content-Type: application/json" -d '{"movies": ["22JumpStreet", "ManchesterByTheSea"]}' http://riak:8098/riak/branches/South

curl -X PUT http://riak:8098/riak/images/TLOTR.jpg -H "Content-type: image/jpeg" -H "Link: </riak/movies/TheLordOfTheRings>; riaktag=\"image\"" --data-binary @TLOTR.jpg

curl -i http://riak:8098/buckets?buckets=true

curl -i http://riak:8098/riak/branches/East/movies,_,_

curl -i http://riak:8098/riak/branches/West/movies,_,_

curl -i http://riak:8098/riak/branches/South/movies,_,_

curl -i http://riak:8098/riak/images/TLOTR.jpg/movies,_,_