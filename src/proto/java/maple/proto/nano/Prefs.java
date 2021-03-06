// Generated by the protocol buffer compiler.  DO NOT EDIT!

package maple.proto.nano;

@SuppressWarnings("hiding")
public interface Prefs {

  // enum PrefNullValue
  @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
  @android.support.annotation.IntDef({
    NULL_VALUE,
  })
  public @interface PrefNullValue {
  }

  public static final int NULL_VALUE = 0;

  public static final class PrefValue extends
      com.google.protobuf.nano.MessageNano {
    public static final int NULL_VALUE_FIELD_NUMBER = 1;
    public static final int NUMBER_VALUE_FIELD_NUMBER = 2;
    public static final int STRING_VALUE_FIELD_NUMBER = 3;
    public static final int BOOL_VALUE_FIELD_NUMBER = 4;
    private int kindCase_ = 0;
    private java.lang.Object kind_;
    public int getKindCase() {
      return this.kindCase_;
    }
    public PrefValue clearKind() {
      this.kindCase_ = 0;
      this.kind_ = null;
      return this;
    }

    private static volatile PrefValue[] _emptyArray;
    public static PrefValue[] emptyArray() {
      // Lazily initializes the empty array
      if (_emptyArray == null) {
        synchronized (
            com.google.protobuf.nano.InternalNano.LAZY_INIT_LOCK) {
          if (_emptyArray == null) {
            _emptyArray = new PrefValue[0];
          }
        }
      }
      return _emptyArray;
    }

    // optional .proto.PrefNullValue null_value = 1;
    public boolean hasNullValue() {
      return this.kindCase_ == 1;
    }
    public int getNullValue() {
      if (this.kindCase_ == 1) {
        return (int) (java.lang.Integer) this.kind_;
      }
      return maple.proto.nano.Prefs.NULL_VALUE;
    }
    public PrefValue setNullValue(int value) {
      this.kindCase_ = 1;
      this.kind_ = value;
      return this;
    }

    // optional double number_value = 2;
    public boolean hasNumberValue() {
      return this.kindCase_ == 2;
    }
    public double getNumberValue() {
      if (this.kindCase_ == 2) {
        return (double) (java.lang.Double) this.kind_;
      }
      return 0D;
    }
    public PrefValue setNumberValue(double value) {
      this.kindCase_ = 2;
      this.kind_ = value;
      return this;
    }

    // optional string string_value = 3;
    public boolean hasStringValue() {
      return this.kindCase_ == 3;
    }
    public java.lang.String getStringValue() {
      if (this.kindCase_ == 3) {
        return (java.lang.String) (java.lang.String) this.kind_;
      }
      return "";
    }
    public PrefValue setStringValue(java.lang.String value) {
      this.kindCase_ = 3;
      this.kind_ = value;
      return this;
    }

    // optional bool bool_value = 4;
    public boolean hasBoolValue() {
      return this.kindCase_ == 4;
    }
    public boolean getBoolValue() {
      if (this.kindCase_ == 4) {
        return (boolean) (java.lang.Boolean) this.kind_;
      }
      return false;
    }
    public PrefValue setBoolValue(boolean value) {
      this.kindCase_ = 4;
      this.kind_ = value;
      return this;
    }

    public PrefValue() {
      clear();
    }

    public PrefValue clear() {
      clearKind();
      cachedSize = -1;
      return this;
    }

    @Override
    public void writeTo(com.google.protobuf.nano.CodedOutputByteBufferNano output)
        throws java.io.IOException {
      if (this.kindCase_ == 1) {
        output.writeEnum(
            1, (java.lang.Integer) this.kind_);
      }
      if (this.kindCase_ == 2) {
        output.writeDouble(
            2, (java.lang.Double) this.kind_);
      }
      if (this.kindCase_ == 3) {
        output.writeString(
            3, (java.lang.String) this.kind_);
      }
      if (this.kindCase_ == 4) {
        output.writeBool(
            4, (java.lang.Boolean) this.kind_);
      }
      super.writeTo(output);
    }

    @Override
    protected int computeSerializedSize() {
      int size = super.computeSerializedSize();
      if (this.kindCase_ == 1) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
            .computeEnumSize(
                1, (java.lang.Integer) this.kind_);
      }
      if (this.kindCase_ == 2) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
            .computeDoubleSize(
                2, (java.lang.Double) this.kind_);
      }
      if (this.kindCase_ == 3) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
            .computeStringSize(
                3, (java.lang.String) this.kind_);
      }
      if (this.kindCase_ == 4) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
            .computeBoolSize(
                4, (java.lang.Boolean) this.kind_);
      }
      return size;
    }

    @Override
    public PrefValue mergeFrom(
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
            this.kind_ = input.readEnum();
            this.kindCase_ = 1;
            break;
          }
          case 17: {
            this.kind_ = input.readDouble();
            this.kindCase_ = 2;
            break;
          }
          case 26: {
            this.kind_ = input.readString();
            this.kindCase_ = 3;
            break;
          }
          case 32: {
            this.kind_ = input.readBool();
            this.kindCase_ = 4;
            break;
          }
        }
      }
    }

    public static PrefValue parseFrom(byte[] data)
        throws com.google.protobuf.nano.InvalidProtocolBufferNanoException {
      return com.google.protobuf.nano.MessageNano.mergeFrom(new PrefValue(), data);
    }

    public static PrefValue parseFrom(
            com.google.protobuf.nano.CodedInputByteBufferNano input)
        throws java.io.IOException {
      return new PrefValue().mergeFrom(input);
    }
  }

  public static final class Pref extends
      com.google.protobuf.nano.MessageNano {

    private static volatile Pref[] _emptyArray;
    public static Pref[] emptyArray() {
      // Lazily initializes the empty array
      if (_emptyArray == null) {
        synchronized (
            com.google.protobuf.nano.InternalNano.LAZY_INIT_LOCK) {
          if (_emptyArray == null) {
            _emptyArray = new Pref[0];
          }
        }
      }
      return _emptyArray;
    }

    // optional string domain = 1;
    public java.lang.String domain;

    // optional string keypath = 2;
    public java.lang.String keypath;

    // optional .proto.PrefValue value = 3;
    public maple.proto.nano.Prefs.PrefValue value;

    public Pref() {
      clear();
    }

    public Pref clear() {
      domain = "";
      keypath = "";
      value = null;
      cachedSize = -1;
      return this;
    }

    @Override
    public void writeTo(com.google.protobuf.nano.CodedOutputByteBufferNano output)
        throws java.io.IOException {
      if (!this.domain.equals("")) {
        output.writeString(1, this.domain);
      }
      if (!this.keypath.equals("")) {
        output.writeString(2, this.keypath);
      }
      if (this.value != null) {
        output.writeMessage(3, this.value);
      }
      super.writeTo(output);
    }

    @Override
    protected int computeSerializedSize() {
      int size = super.computeSerializedSize();
      if (!this.domain.equals("")) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
            .computeStringSize(1, this.domain);
      }
      if (!this.keypath.equals("")) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
            .computeStringSize(2, this.keypath);
      }
      if (this.value != null) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
          .computeMessageSize(3, this.value);
      }
      return size;
    }

    @Override
    public Pref mergeFrom(
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
            this.domain = input.readString();
            break;
          }
          case 18: {
            this.keypath = input.readString();
            break;
          }
          case 26: {
            if (this.value == null) {
              this.value = new maple.proto.nano.Prefs.PrefValue();
            }
            input.readMessage(this.value);
            break;
          }
        }
      }
    }

    public static Pref parseFrom(byte[] data)
        throws com.google.protobuf.nano.InvalidProtocolBufferNanoException {
      return com.google.protobuf.nano.MessageNano.mergeFrom(new Pref(), data);
    }

    public static Pref parseFrom(
            com.google.protobuf.nano.CodedInputByteBufferNano input)
        throws java.io.IOException {
      return new Pref().mergeFrom(input);
    }
  }

  public static final class PrefRecord extends
      com.google.protobuf.nano.MessageNano {

    private static volatile PrefRecord[] _emptyArray;
    public static PrefRecord[] emptyArray() {
      // Lazily initializes the empty array
      if (_emptyArray == null) {
        synchronized (
            com.google.protobuf.nano.InternalNano.LAZY_INIT_LOCK) {
          if (_emptyArray == null) {
            _emptyArray = new PrefRecord[0];
          }
        }
      }
      return _emptyArray;
    }

    // optional string id = 1;
    public java.lang.String id;

    // optional string user_id = 2;
    public java.lang.String userId;

    // optional string domain = 3;
    public java.lang.String domain;

    // optional string keypath = 4;
    public java.lang.String keypath;

    // optional .proto.PrefValue value = 5;
    public maple.proto.nano.Prefs.PrefValue value;

    public PrefRecord() {
      clear();
    }

    public PrefRecord clear() {
      id = "";
      userId = "";
      domain = "";
      keypath = "";
      value = null;
      cachedSize = -1;
      return this;
    }

    @Override
    public void writeTo(com.google.protobuf.nano.CodedOutputByteBufferNano output)
        throws java.io.IOException {
      if (!this.id.equals("")) {
        output.writeString(1, this.id);
      }
      if (!this.userId.equals("")) {
        output.writeString(2, this.userId);
      }
      if (!this.domain.equals("")) {
        output.writeString(3, this.domain);
      }
      if (!this.keypath.equals("")) {
        output.writeString(4, this.keypath);
      }
      if (this.value != null) {
        output.writeMessage(5, this.value);
      }
      super.writeTo(output);
    }

    @Override
    protected int computeSerializedSize() {
      int size = super.computeSerializedSize();
      if (!this.id.equals("")) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
            .computeStringSize(1, this.id);
      }
      if (!this.userId.equals("")) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
            .computeStringSize(2, this.userId);
      }
      if (!this.domain.equals("")) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
            .computeStringSize(3, this.domain);
      }
      if (!this.keypath.equals("")) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
            .computeStringSize(4, this.keypath);
      }
      if (this.value != null) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
          .computeMessageSize(5, this.value);
      }
      return size;
    }

    @Override
    public PrefRecord mergeFrom(
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
            this.id = input.readString();
            break;
          }
          case 18: {
            this.userId = input.readString();
            break;
          }
          case 26: {
            this.domain = input.readString();
            break;
          }
          case 34: {
            this.keypath = input.readString();
            break;
          }
          case 42: {
            if (this.value == null) {
              this.value = new maple.proto.nano.Prefs.PrefValue();
            }
            input.readMessage(this.value);
            break;
          }
        }
      }
    }

    public static PrefRecord parseFrom(byte[] data)
        throws com.google.protobuf.nano.InvalidProtocolBufferNanoException {
      return com.google.protobuf.nano.MessageNano.mergeFrom(new PrefRecord(), data);
    }

    public static PrefRecord parseFrom(
            com.google.protobuf.nano.CodedInputByteBufferNano input)
        throws java.io.IOException {
      return new PrefRecord().mergeFrom(input);
    }
  }
}
