import consumer from "channels/consumer"

consumer.subscriptions.create({ channel: "ChatroomChannel", chatroom_id: 1}, 
{  connected() {
    // Called when the subscription is ready for use on the server
    
    console.log('connected...')
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    console.log(data);
    // const sentMessage = document.getElementById('messages')
    // sentMessage.innerHTML = sentMessage.innerHTML + data.html
  }
});
