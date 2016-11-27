# README

##Subject

###Subject Creation:
`curl -H "Content-Type: application/json" -X POST -d '{"name": "abcde"}' http://localhost:3000/subjects`

response:
`{"id":3,"name":"fghij"}`

##Session

###Session Creation:
`curl -H "Content-Type: application/json" -X POST -d '{"name": "session1", "machine_key": "1234", "start_date": "2016-11-28 02:19:06 +0800", "end_date": "2016-11-28 06:19:06 +0800", "subject_id": "1"}' http://localhost:3000/sessions`

response:
`{"id":1,"name":"session1","time":null,"lecturer_name":"","current_slide":0,"classroom":null,"slides_sequence":null,"subject_id":1,"machine_key":"1234","start_date":"2016-11-27T18:19:06.000Z","end_date":"2016-11-27T22:19:06.000Z"}`

##Topic

###Topics Creation:
`curl -H "Content-Type: application/json" -X POST -d '{"name": "topic1", "machine_key": "1234", "time": "2016-11-28 04:19:06 +0800"}' http://localhost:3000/topics`

response:
`{"id":1,"name":"topic1","start_slide":null,"end_slide":null,"std_unclear":0,"machine_key":"1234","time":"2016-11-27T20:19:06.000Z"}`

###Topics Query (Find all topics related to a session):
`curl -X GET http://localhost:3000/sessions/1/get_topics`

response:
`[{"id":1,"name":"topic1","start_slide":null,"end_slide":null,"std_unclear":0,"machine_key":"1234","time":"2016-11-27T20:19:06.000Z"}]`

###Topics increase counter:
`curl -X GET http://localhost:3000/topics/1/incr_counter`

response:
`{"id":1,"name":"topic1","start_slide":null,"end_slide":null,"std_unclear":1,"machine_key":"1234","time":"2016-11-27T20:19:06.000Z"}`
