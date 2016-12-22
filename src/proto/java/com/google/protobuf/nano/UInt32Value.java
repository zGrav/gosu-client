// Generated by the protocol buffer compiler.  DO NOT EDIT!

package com.google.protobuf.nano;

@SuppressWarnings("hiding")
public final class UInt32Value extends
    com.google.protobuf.nano.MessageNano {

  private static volatile UInt32Value[] _emptyArray;
  public static UInt32Value[] emptyArray() {
    // Lazily initializes the empty array
    if (_emptyArray == null) {
      synchronized (
          com.google.protobuf.nano.InternalNano.LAZY_INIT_LOCK) {
        if (_emptyArray == null) {
          _emptyArray = new UInt32Value[0];
        }
      }
    }
    return _emptyArray;
  }

  // optional uint32 value = 1;
  public int value;

  public UInt32Value() {
    clear();
  }

  public UInt32Value clear() {
    value = 0;
    cachedSize = -1;
    return this;
  }

  @Override
  public void writeTo(com.google.protobuf.nano.CodedOutputByteBufferNano output)
      throws java.io.IOException {
    if (this.value != 0) {
      output.writeUInt32(1, this.value);
    }
    super.writeTo(output);
  }

  @Override
  protected int computeSerializedSize() {
    int size = super.computeSerializedSize();
    if (this.value != 0) {
      size += com.google.protobuf.nano.CodedOutputByteBufferNano
          .computeUInt32Size(1, this.value);
    }
    return size;
  }

  @Override
  public UInt32Value mergeFrom(
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
          this.value = input.readUInt32();
          break;
        }
      }
    }
  }

  public static UInt32Value parseFrom(byte[] data)
      throws com.google.protobuf.nano.InvalidProtocolBufferNanoException {
    return com.google.protobuf.nano.MessageNano.mergeFrom(new UInt32Value(), data);
  }

  public static UInt32Value parseFrom(
          com.google.protobuf.nano.CodedInputByteBufferNano input)
      throws java.io.IOException {
    return new UInt32Value().mergeFrom(input);
  }
}