// Generated by the protocol buffer compiler.  DO NOT EDIT!

package maple.proto.nano;

@SuppressWarnings("hiding")
public interface Mail {

  public static final class SendEmailRequest extends
      com.google.protobuf.nano.MessageNano {

    private static volatile SendEmailRequest[] _emptyArray;
    public static SendEmailRequest[] emptyArray() {
      // Lazily initializes the empty array
      if (_emptyArray == null) {
        synchronized (
            com.google.protobuf.nano.InternalNano.LAZY_INIT_LOCK) {
          if (_emptyArray == null) {
            _emptyArray = new SendEmailRequest[0];
          }
        }
      }
      return _emptyArray;
    }

    // optional string recipient_name = 1;
    public java.lang.String recipientName;

    // optional string recipient_address = 2;
    public java.lang.String recipientAddress;

    // optional string subject = 3;
    public java.lang.String subject;

    // optional string template = 4;
    public java.lang.String template;

    // map<string, string> variables = 5;
    public java.util.Map<java.lang.String, java.lang.String> variables;

    public SendEmailRequest() {
      clear();
    }

    public SendEmailRequest clear() {
      recipientName = "";
      recipientAddress = "";
      subject = "";
      template = "";
      variables = null;
      cachedSize = -1;
      return this;
    }

    @Override
    public void writeTo(com.google.protobuf.nano.CodedOutputByteBufferNano output)
        throws java.io.IOException {
      if (!this.recipientName.equals("")) {
        output.writeString(1, this.recipientName);
      }
      if (!this.recipientAddress.equals("")) {
        output.writeString(2, this.recipientAddress);
      }
      if (!this.subject.equals("")) {
        output.writeString(3, this.subject);
      }
      if (!this.template.equals("")) {
        output.writeString(4, this.template);
      }
      if (this.variables != null) {
        com.google.protobuf.nano.InternalNano.serializeMapField(
          output, this.variables, 5,
        com.google.protobuf.nano.InternalNano.TYPE_STRING,
        com.google.protobuf.nano.InternalNano.TYPE_STRING);
      }
      super.writeTo(output);
    }

    @Override
    protected int computeSerializedSize() {
      int size = super.computeSerializedSize();
      if (!this.recipientName.equals("")) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
            .computeStringSize(1, this.recipientName);
      }
      if (!this.recipientAddress.equals("")) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
            .computeStringSize(2, this.recipientAddress);
      }
      if (!this.subject.equals("")) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
            .computeStringSize(3, this.subject);
      }
      if (!this.template.equals("")) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
            .computeStringSize(4, this.template);
      }
      if (this.variables != null) {
        size += com.google.protobuf.nano.InternalNano.computeMapFieldSize(
          this.variables, 5,
        com.google.protobuf.nano.InternalNano.TYPE_STRING,
        com.google.protobuf.nano.InternalNano.TYPE_STRING);
      }
      return size;
    }

    @Override
    public SendEmailRequest mergeFrom(
            com.google.protobuf.nano.CodedInputByteBufferNano input)
        throws java.io.IOException {
      com.google.protobuf.nano.MapFactories.MapFactory mapFactory =
        com.google.protobuf.nano.MapFactories.getMapFactory();
      while (true) {
        int tag = input.readTag();
        switch (tag) {
          case 0:
            return this;
          default: {
            if (!com.google.protobuf.nano.WireFormatNano.parseUnknownField(input, tag)) {
              return this;
            }
            break;
          }
          case 10: {
            this.recipientName = input.readString();
            break;
          }
          case 18: {
            this.recipientAddress = input.readString();
            break;
          }
          case 26: {
            this.subject = input.readString();
            break;
          }
          case 34: {
            this.template = input.readString();
            break;
          }
          case 42: {
            this.variables = com.google.protobuf.nano.InternalNano.mergeMapEntry(
              input, this.variables, mapFactory,
              com.google.protobuf.nano.InternalNano.TYPE_STRING,
              com.google.protobuf.nano.InternalNano.TYPE_STRING,
              null,
              10, 18);

            break;
          }
        }
      }
    }

    public static SendEmailRequest parseFrom(byte[] data)
        throws com.google.protobuf.nano.InvalidProtocolBufferNanoException {
      return com.google.protobuf.nano.MessageNano.mergeFrom(new SendEmailRequest(), data);
    }

    public static SendEmailRequest parseFrom(
            com.google.protobuf.nano.CodedInputByteBufferNano input)
        throws java.io.IOException {
      return new SendEmailRequest().mergeFrom(input);
    }
  }

  public static final class SendEmailResponse extends
      com.google.protobuf.nano.MessageNano {

    private static volatile SendEmailResponse[] _emptyArray;
    public static SendEmailResponse[] emptyArray() {
      // Lazily initializes the empty array
      if (_emptyArray == null) {
        synchronized (
            com.google.protobuf.nano.InternalNano.LAZY_INIT_LOCK) {
          if (_emptyArray == null) {
            _emptyArray = new SendEmailResponse[0];
          }
        }
      }
      return _emptyArray;
    }

    public SendEmailResponse() {
      clear();
    }

    public SendEmailResponse clear() {
      cachedSize = -1;
      return this;
    }

    @Override
    public SendEmailResponse mergeFrom(
            com.google.protobuf.nano.CodedInputByteBufferNano input)
        throws java.io.IOException {
      while (true) {
        int tag = input.readTag();
        switch (tag) {
          case 0:
            return this;
          default: {
            if (!com.google.protobuf.nano.WireFormatNano.parseUnknownField(input, tag)) {
              return this;
            }
            break;
          }
        }
      }
    }

    public static SendEmailResponse parseFrom(byte[] data)
        throws com.google.protobuf.nano.InvalidProtocolBufferNanoException {
      return com.google.protobuf.nano.MessageNano.mergeFrom(new SendEmailResponse(), data);
    }

    public static SendEmailResponse parseFrom(
            com.google.protobuf.nano.CodedInputByteBufferNano input)
        throws java.io.IOException {
      return new SendEmailResponse().mergeFrom(input);
    }
  }

  public static final class SendPushReminderRequest extends
      com.google.protobuf.nano.MessageNano {

    private static volatile SendPushReminderRequest[] _emptyArray;
    public static SendPushReminderRequest[] emptyArray() {
      // Lazily initializes the empty array
      if (_emptyArray == null) {
        synchronized (
            com.google.protobuf.nano.InternalNano.LAZY_INIT_LOCK) {
          if (_emptyArray == null) {
            _emptyArray = new SendPushReminderRequest[0];
          }
        }
      }
      return _emptyArray;
    }

    // optional .proto.User recipient = 1;
    public maple.proto.nano.Profile.User recipient;

    // optional .proto.WebsocketMessage message = 2;
    public maple.proto.nano.Message.WebsocketMessage message;

    // optional .proto.Channel channel = 3;
    public maple.proto.nano.Profile.Channel channel;

    // optional .proto.Group group = 4;
    public maple.proto.nano.Profile.Group group;

    // optional .proto.Game game = 5;
    public maple.proto.nano.Profile.Game game;

    // repeated .proto.User participants = 6;
    public maple.proto.nano.Profile.User[] participants;

    // optional bool wasMention = 7;
    public boolean wasMention;

    public SendPushReminderRequest() {
      clear();
    }

    public SendPushReminderRequest clear() {
      recipient = null;
      message = null;
      channel = null;
      group = null;
      game = null;
      participants = maple.proto.nano.Profile.User.emptyArray();
      wasMention = false;
      cachedSize = -1;
      return this;
    }

    @Override
    public void writeTo(com.google.protobuf.nano.CodedOutputByteBufferNano output)
        throws java.io.IOException {
      if (this.recipient != null) {
        output.writeMessage(1, this.recipient);
      }
      if (this.message != null) {
        output.writeMessage(2, this.message);
      }
      if (this.channel != null) {
        output.writeMessage(3, this.channel);
      }
      if (this.group != null) {
        output.writeMessage(4, this.group);
      }
      if (this.game != null) {
        output.writeMessage(5, this.game);
      }
      if (this.participants != null && this.participants.length > 0) {
        for (int i = 0; i < this.participants.length; i++) {
          maple.proto.nano.Profile.User element = this.participants[i];
          if (element != null) {
            output.writeMessage(6, element);
          }
        }
      }
      if (this.wasMention != false) {
        output.writeBool(7, this.wasMention);
      }
      super.writeTo(output);
    }

    @Override
    protected int computeSerializedSize() {
      int size = super.computeSerializedSize();
      if (this.recipient != null) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
          .computeMessageSize(1, this.recipient);
      }
      if (this.message != null) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
          .computeMessageSize(2, this.message);
      }
      if (this.channel != null) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
          .computeMessageSize(3, this.channel);
      }
      if (this.group != null) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
          .computeMessageSize(4, this.group);
      }
      if (this.game != null) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
          .computeMessageSize(5, this.game);
      }
      if (this.participants != null && this.participants.length > 0) {
        for (int i = 0; i < this.participants.length; i++) {
          maple.proto.nano.Profile.User element = this.participants[i];
          if (element != null) {
            size += com.google.protobuf.nano.CodedOutputByteBufferNano
              .computeMessageSize(6, element);
          }
        }
      }
      if (this.wasMention != false) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
            .computeBoolSize(7, this.wasMention);
      }
      return size;
    }

    @Override
    public SendPushReminderRequest mergeFrom(
            com.google.protobuf.nano.CodedInputByteBufferNano input)
        throws java.io.IOException {
      while (true) {
        int tag = input.readTag();
        switch (tag) {
          case 0:
            return this;
          default: {
            if (!com.google.protobuf.nano.WireFormatNano.parseUnknownField(input, tag)) {
              return this;
            }
            break;
          }
          case 10: {
            if (this.recipient == null) {
              this.recipient = new maple.proto.nano.Profile.User();
            }
            input.readMessage(this.recipient);
            break;
          }
          case 18: {
            if (this.message == null) {
              this.message = new maple.proto.nano.Message.WebsocketMessage();
            }
            input.readMessage(this.message);
            break;
          }
          case 26: {
            if (this.channel == null) {
              this.channel = new maple.proto.nano.Profile.Channel();
            }
            input.readMessage(this.channel);
            break;
          }
          case 34: {
            if (this.group == null) {
              this.group = new maple.proto.nano.Profile.Group();
            }
            input.readMessage(this.group);
            break;
          }
          case 42: {
            if (this.game == null) {
              this.game = new maple.proto.nano.Profile.Game();
            }
            input.readMessage(this.game);
            break;
          }
          case 50: {
            int arrayLength = com.google.protobuf.nano.WireFormatNano
                .getRepeatedFieldArrayLength(input, 50);
            int i = this.participants == null ? 0 : this.participants.length;
            maple.proto.nano.Profile.User[] newArray =
                new maple.proto.nano.Profile.User[i + arrayLength];
            if (i != 0) {
              java.lang.System.arraycopy(this.participants, 0, newArray, 0, i);
            }
            for (; i < newArray.length - 1; i++) {
              newArray[i] = new maple.proto.nano.Profile.User();
              input.readMessage(newArray[i]);
              input.readTag();
            }
            // Last one without readTag.
            newArray[i] = new maple.proto.nano.Profile.User();
            input.readMessage(newArray[i]);
            this.participants = newArray;
            break;
          }
          case 56: {
            this.wasMention = input.readBool();
            break;
          }
        }
      }
    }

    public static SendPushReminderRequest parseFrom(byte[] data)
        throws com.google.protobuf.nano.InvalidProtocolBufferNanoException {
      return com.google.protobuf.nano.MessageNano.mergeFrom(new SendPushReminderRequest(), data);
    }

    public static SendPushReminderRequest parseFrom(
            com.google.protobuf.nano.CodedInputByteBufferNano input)
        throws java.io.IOException {
      return new SendPushReminderRequest().mergeFrom(input);
    }
  }

  public static final class SendPushReminderResponse extends
      com.google.protobuf.nano.MessageNano {

    private static volatile SendPushReminderResponse[] _emptyArray;
    public static SendPushReminderResponse[] emptyArray() {
      // Lazily initializes the empty array
      if (_emptyArray == null) {
        synchronized (
            com.google.protobuf.nano.InternalNano.LAZY_INIT_LOCK) {
          if (_emptyArray == null) {
            _emptyArray = new SendPushReminderResponse[0];
          }
        }
      }
      return _emptyArray;
    }

    // optional .proto.User recipient = 1;
    public maple.proto.nano.Profile.User recipient;

    // optional .proto.WebsocketMessage message = 2;
    public maple.proto.nano.Message.WebsocketMessage message;

    // optional .proto.Channel channel = 3;
    public maple.proto.nano.Profile.Channel channel;

    // optional .proto.Group group = 4;
    public maple.proto.nano.Profile.Group group;

    // optional .proto.Game game = 5;
    public maple.proto.nano.Profile.Game game;

    // repeated .proto.User participants = 6;
    public maple.proto.nano.Profile.User[] participants;

    public SendPushReminderResponse() {
      clear();
    }

    public SendPushReminderResponse clear() {
      recipient = null;
      message = null;
      channel = null;
      group = null;
      game = null;
      participants = maple.proto.nano.Profile.User.emptyArray();
      cachedSize = -1;
      return this;
    }

    @Override
    public void writeTo(com.google.protobuf.nano.CodedOutputByteBufferNano output)
        throws java.io.IOException {
      if (this.recipient != null) {
        output.writeMessage(1, this.recipient);
      }
      if (this.message != null) {
        output.writeMessage(2, this.message);
      }
      if (this.channel != null) {
        output.writeMessage(3, this.channel);
      }
      if (this.group != null) {
        output.writeMessage(4, this.group);
      }
      if (this.game != null) {
        output.writeMessage(5, this.game);
      }
      if (this.participants != null && this.participants.length > 0) {
        for (int i = 0; i < this.participants.length; i++) {
          maple.proto.nano.Profile.User element = this.participants[i];
          if (element != null) {
            output.writeMessage(6, element);
          }
        }
      }
      super.writeTo(output);
    }

    @Override
    protected int computeSerializedSize() {
      int size = super.computeSerializedSize();
      if (this.recipient != null) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
          .computeMessageSize(1, this.recipient);
      }
      if (this.message != null) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
          .computeMessageSize(2, this.message);
      }
      if (this.channel != null) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
          .computeMessageSize(3, this.channel);
      }
      if (this.group != null) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
          .computeMessageSize(4, this.group);
      }
      if (this.game != null) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
          .computeMessageSize(5, this.game);
      }
      if (this.participants != null && this.participants.length > 0) {
        for (int i = 0; i < this.participants.length; i++) {
          maple.proto.nano.Profile.User element = this.participants[i];
          if (element != null) {
            size += com.google.protobuf.nano.CodedOutputByteBufferNano
              .computeMessageSize(6, element);
          }
        }
      }
      return size;
    }

    @Override
    public SendPushReminderResponse mergeFrom(
            com.google.protobuf.nano.CodedInputByteBufferNano input)
        throws java.io.IOException {
      while (true) {
        int tag = input.readTag();
        switch (tag) {
          case 0:
            return this;
          default: {
            if (!com.google.protobuf.nano.WireFormatNano.parseUnknownField(input, tag)) {
              return this;
            }
            break;
          }
          case 10: {
            if (this.recipient == null) {
              this.recipient = new maple.proto.nano.Profile.User();
            }
            input.readMessage(this.recipient);
            break;
          }
          case 18: {
            if (this.message == null) {
              this.message = new maple.proto.nano.Message.WebsocketMessage();
            }
            input.readMessage(this.message);
            break;
          }
          case 26: {
            if (this.channel == null) {
              this.channel = new maple.proto.nano.Profile.Channel();
            }
            input.readMessage(this.channel);
            break;
          }
          case 34: {
            if (this.group == null) {
              this.group = new maple.proto.nano.Profile.Group();
            }
            input.readMessage(this.group);
            break;
          }
          case 42: {
            if (this.game == null) {
              this.game = new maple.proto.nano.Profile.Game();
            }
            input.readMessage(this.game);
            break;
          }
          case 50: {
            int arrayLength = com.google.protobuf.nano.WireFormatNano
                .getRepeatedFieldArrayLength(input, 50);
            int i = this.participants == null ? 0 : this.participants.length;
            maple.proto.nano.Profile.User[] newArray =
                new maple.proto.nano.Profile.User[i + arrayLength];
            if (i != 0) {
              java.lang.System.arraycopy(this.participants, 0, newArray, 0, i);
            }
            for (; i < newArray.length - 1; i++) {
              newArray[i] = new maple.proto.nano.Profile.User();
              input.readMessage(newArray[i]);
              input.readTag();
            }
            // Last one without readTag.
            newArray[i] = new maple.proto.nano.Profile.User();
            input.readMessage(newArray[i]);
            this.participants = newArray;
            break;
          }
        }
      }
    }

    public static SendPushReminderResponse parseFrom(byte[] data)
        throws com.google.protobuf.nano.InvalidProtocolBufferNanoException {
      return com.google.protobuf.nano.MessageNano.mergeFrom(new SendPushReminderResponse(), data);
    }

    public static SendPushReminderResponse parseFrom(
            com.google.protobuf.nano.CodedInputByteBufferNano input)
        throws java.io.IOException {
      return new SendPushReminderResponse().mergeFrom(input);
    }
  }
}
