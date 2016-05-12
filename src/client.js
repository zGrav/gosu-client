'use strict';

let Constants = require('./constants');

let request = require('request');

let WebSocket = require('websocket').w3cwebsocket;

let Api = require('./proto').Api;

let Class = function(methods) {
    let classconstructor = function() {
        this.initialize.apply(this, arguments);
    };

    for (let property in methods) {
       classconstructor.prototype[property] = methods[property];
    }

    if (!classconstructor.prototype.initialize) classconstructor.prototype.initialize = function(){};

    return classconstructor;
};

let Client = Class({

    chatHandshake: function(token) {
        let ChatHandshake = Api.ChatHandshakeResponse;
        let url = Constants.Endpoint + '/chat/handshake';

        request({
            headers: {
              'Content-Type': 'application/x-protobuf',
              'X-Token': token
            },
            uri: Constants.Endpoint + '/chat/handshake',
            method: 'GET'
          }, function (err, res, body) {
              if (err) {
                  chatHandshakeResult(err);
              } else {
                  //let msg = ChatHandshake.decode(res.body).toRaw();
                  let msg = res.body;
                  msg = msg.replace("\n", '');
                  msg = msg.replace("!", '');
                  if (msg.startsWith('wss') === false) {
                      if (msg.startsWith('ss')) {
                          msg = msg.replace('ss', 'wss');
                      }
                  }
                  chatHandshakeResult(null, msg, token);
              }
          });
    }
});

function chatHandshakeResult(err, msg, token) {
    if (err) {
        global.robot.logger.error("Handshake error: " + err);
        return false;
    } else {
        global.robot.logger.info("Handshake okay! Opening WS!");
        let conn = new WebSocket(msg, token);
        conn.binaryType = 'arraybuffer';

        conn.onopen = function() {
            global.robot.logger.info('WS established!');
            //TODO
        };

        conn.onerror = function() {
            global.robot.logger.error('WS error!');
            //TODO
        };

        conn.onmessage = function(evt) {
            global.robot.logger.info('New WS message!')
            //TODO
        };
    }
}


module.exports = Client;
