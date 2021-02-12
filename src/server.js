const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const cors = require('cors')
const http = require('http').Server(app);
const io = require('socket.io')(http);
const mongoose = require('mongoose');
/*
var ec2 = require("ec2-publicip");
var ipaws;

ec2.getPublicIP(function ip(error, ip) {
  if (error) {
    console.log(error);
  }
    var ipaws = ip;
    console.log(ipaws);
});
*/
const uri = "mongodb+srv://jhonatan:tfdfsxzW7eHpjBbZ@cluster0.zftne.mongodb.net/ezops?retryWrites=true&w=majority";

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(express.static(__dirname))

const Message = mongoose.model('Message', {
  name: String,
  message: String,
  email
  : String
})

mongoose.connect(uri, { useNewUrlParser: true, useUnifiedTopology: true}, (err) =>{
    var connectionStatus = !err ? 'Success': 'Error Connecting to database';
console.log(connectionStatus);
});


app.get('/messages', async (req, res) => {
  console.log("Get no banco")
  const result = await Message.find()
  Message.fi
  return res.send(result)
})

app.get('/messages/:user', (req, res) => {
  var user = req.params.user
  Message.find({name: user},(err, messages)=> {
    res.send(messages);
  })
})

app.ipaws;

app.post('/messages', async (req, res) => {
  const result = await Message.create(req.body)
  console.log(result)
  return res.json(result)
})

io.on('connection', () =>{
  console.log('a user is connected')
})

app.use(cors())

const server = http.listen(3000, () => {
  console.log('server is running on port', server.address().port);
});