'use strict';
let gosu = require('./gosu.js');

module.exports = {
    Analytics: gosu.proto,
    Api: gosu.proto,
	Contact: gosu.proto,
    Buildin: gosu.google.protobuf,
    Channel: gosu.proto,
    Hub: gosu.proto,
    Message: gosu.proto,
    Optional: gosu.proto,
    Preferences: gosu.proto,
    Profile: gosu.proto,
    Push: gosu.proto,
    Search: gosu.proto,
    Sip: gosu.proto,
    Types: {
        'type.go.su/proto.User': gosu.proto.User,
        'type.go.su/proto.Group': gosu.proto.Group,
        'type.go.su/proto.Channel': gosu.proto.Channel,
        'type.go.su/proto.Hub': gosu.proto.Hub
    }
};
