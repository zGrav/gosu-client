// Generated by the protocol buffer compiler.  DO NOT EDIT!

package maple.proto.nano;

@SuppressWarnings("hiding")
public interface ChatserviceControl {

  public static final class ChatServiceControlCommand extends
      com.google.protobuf.nano.MessageNano {

    // enum CommandType
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    @android.support.annotation.IntDef({
      UNKNOWN,
      DISCONNECT_USERS,
    })
    public @interface CommandType {
    }

    public static final int UNKNOWN = 0;
    public static final int DISCONNECT_USERS = 1;
    public static final int DISCONNECT_USERS_COMMAND_FIELD_NUMBER = 2;
    private int commandCase_ = 0;
    private java.lang.Object command_;
    public int getCommandCase() {
      return this.commandCase_;
    }
    public ChatServiceControlCommand clearCommand() {
      this.commandCase_ = 0;
      this.command_ = null;
      return this;
    }

    private static volatile ChatServiceControlCommand[] _emptyArray;
    public static ChatServiceControlCommand[] emptyArray() {
      // Lazily initializes the empty array
      if (_emptyArray == null) {
        synchronized (
            com.google.protobuf.nano.InternalNano.LAZY_INIT_LOCK) {
          if (_emptyArray == null) {
            _emptyArray = new ChatServiceControlCommand[0];
          }
        }
      }
      return _emptyArray;
    }

    // optional .proto.ChatServiceControlCommand.CommandType type = 1;
    @maple.proto.nano.ChatserviceControl.ChatServiceControlCommand.CommandType
    public int type;

    // optional .proto.ChatServiceDisconnectUsersCommand disconnect_users_command = 2;
    public boolean hasDisconnectUsersCommand() {
      return this.commandCase_ == 2;
    }
    public maple.proto.nano.ChatserviceControl.ChatServiceDisconnectUsersCommand getDisconnectUsersCommand() {
      if (this.commandCase_ == 2) {
        return (maple.proto.nano.ChatserviceControl.ChatServiceDisconnectUsersCommand) this.command_;
      }
      return null;
    }
    public ChatServiceControlCommand setDisconnectUsersCommand(maple.proto.nano.ChatserviceControl.ChatServiceDisconnectUsersCommand value) {
      if (value == null) { throw new java.lang.NullPointerException(); }
      this.commandCase_ = 2;
      this.command_ = value;
      return this;
    }

    public ChatServiceControlCommand() {
      clear();
    }

    public ChatServiceControlCommand clear() {
      type = maple.proto.nano.ChatserviceControl.ChatServiceControlCommand.UNKNOWN;
      clearCommand();
      cachedSize = -1;
      return this;
    }

    @Override
    public void writeTo(com.google.protobuf.nano.CodedOutputByteBufferNano output)
        throws java.io.IOException {
      if (this.type != maple.proto.nano.ChatserviceControl.ChatServiceControlCommand.UNKNOWN) {
        output.writeInt32(1, this.type);
      }
      if (this.commandCase_ == 2) {
        output.writeMessage(2,
            (com.google.protobuf.nano.MessageNano) this.command_);
      }
      super.writeTo(output);
    }

    @Override
    protected int computeSerializedSize() {
      int size = super.computeSerializedSize();
      if (this.type != maple.proto.nano.ChatserviceControl.ChatServiceControlCommand.UNKNOWN) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
          .computeInt32Size(1, this.type);
      }
      if (this.commandCase_ == 2) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
          .computeMessageSize(2,
              (com.google.protobuf.nano.MessageNano) this.command_);
      }
      return size;
    }

    @Override
    public ChatServiceControlCommand mergeFrom(
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
          case 8: {
            int value = input.readInt32();
            switch (value) {
              case maple.proto.nano.ChatserviceControl.ChatServiceControlCommand.UNKNOWN:
              case maple.proto.nano.ChatserviceControl.ChatServiceControlCommand.DISCONNECT_USERS:
                this.type = value;
                break;
            }
            break;
          }
          case 18: {
            if (!(this.commandCase_ == 2)) {
              this.command_ = new maple.proto.nano.ChatserviceControl.ChatServiceDisconnectUsersCommand();
            }
            input.readMessage(
                (com.google.protobuf.nano.MessageNano) this.command_);
            this.commandCase_ = 2;
            break;
          }
        }
      }
    }

    public static ChatServiceControlCommand parseFrom(byte[] data)
        throws com.google.protobuf.nano.InvalidProtocolBufferNanoException {
      return com.google.protobuf.nano.MessageNano.mergeFrom(new ChatServiceControlCommand(), data);
    }

    public static ChatServiceControlCommand parseFrom(
            com.google.protobuf.nano.CodedInputByteBufferNano input)
        throws java.io.IOException {
      return new ChatServiceControlCommand().mergeFrom(input);
    }
  }

  public static final class ChatServiceDisconnectUsersCommand extends
      com.google.protobuf.nano.MessageNano {

    private static volatile ChatServiceDisconnectUsersCommand[] _emptyArray;
    public static ChatServiceDisconnectUsersCommand[] emptyArray() {
      // Lazily initializes the empty array
      if (_emptyArray == null) {
        synchronized (
            com.google.protobuf.nano.InternalNano.LAZY_INIT_LOCK) {
          if (_emptyArray == null) {
            _emptyArray = new ChatServiceDisconnectUsersCommand[0];
          }
        }
      }
      return _emptyArray;
    }

    // repeated string user_ids = 1;
    public java.lang.String[] userIds;

    public ChatServiceDisconnectUsersCommand() {
      clear();
    }

    public ChatServiceDisconnectUsersCommand clear() {
      userIds = com.google.protobuf.nano.WireFormatNano.EMPTY_STRING_ARRAY;
      cachedSize = -1;
      return this;
    }

    @Override
    public void writeTo(com.google.protobuf.nano.CodedOutputByteBufferNano output)
        throws java.io.IOException {
      if (this.userIds != null && this.userIds.length > 0) {
        for (int i = 0; i < this.userIds.length; i++) {
          java.lang.String element = this.userIds[i];
          if (element != null) {
            output.writeString(1, element);
          }
        }
      }
      super.writeTo(output);
    }

    @Override
    protected int computeSerializedSize() {
      int size = super.computeSerializedSize();
      if (this.userIds != null && this.userIds.length > 0) {
        int dataCount = 0;
        int dataSize = 0;
        for (int i = 0; i < this.userIds.length; i++) {
          java.lang.String element = this.userIds[i];
          if (element != null) {
            dataCount++;
            dataSize += com.google.protobuf.nano.CodedOutputByteBufferNano
                .computeStringSizeNoTag(element);
          }
        }
        size += dataSize;
        size += 1 * dataCount;
      }
      return size;
    }

    @Override
    public ChatServiceDisconnectUsersCommand mergeFrom(
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
            int arrayLength = com.google.protobuf.nano.WireFormatNano
                .getRepeatedFieldArrayLength(input, 10);
            int i = this.userIds == null ? 0 : this.userIds.length;
            java.lang.String[] newArray = new java.lang.String[i + arrayLength];
            if (i != 0) {
              java.lang.System.arraycopy(this.userIds, 0, newArray, 0, i);
            }
            for (; i < newArray.length - 1; i++) {
              newArray[i] = input.readString();
              input.readTag();
            }
            // Last one without readTag.
            newArray[i] = input.readString();
            this.userIds = newArray;
            break;
          }
        }
      }
    }

    public static ChatServiceDisconnectUsersCommand parseFrom(byte[] data)
        throws com.google.protobuf.nano.InvalidProtocolBufferNanoException {
      return com.google.protobuf.nano.MessageNano.mergeFrom(new ChatServiceDisconnectUsersCommand(), data);
    }

    public static ChatServiceDisconnectUsersCommand parseFrom(
            com.google.protobuf.nano.CodedInputByteBufferNano input)
        throws java.io.IOException {
      return new ChatServiceDisconnectUsersCommand().mergeFrom(input);
    }
  }
}