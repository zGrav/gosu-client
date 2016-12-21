// Generated by the protocol buffer compiler.  DO NOT EDIT!

package com.google.protobuf.nano;

@SuppressWarnings("hiding")
public final class UInt64Value extends
    com.google.protobuf.nano.MessageNano {

  private static volatile UInt64Value[] _emptyArray;
  public static UInt64Value[] emptyArray() {
    // Lazily initializes the empty array
    if (_emptyArray == null) {
      synchronized (
          com.google.protobuf.nano.InternalNano.LAZY_INIT_LOCK) {
        if (_emptyArray == null) {
          _emptyArray = new UInt64Value[0];
        }
      }
    }
    return _emptyArray;
  }

  // optional uint64 value = 1;
  public long value;

  public UInt64Value() {
    clear();
  }

  public UInt64Value clear() {
    value = 0L;
    cachedSize = -1;
    return this;
  }

  @Override
  public void writeTo(com.google.protobuf.nano.CodedOutputByteBufferNano output)
      throws java.io.IOException {
    if (this.value != 0L) {
      output.writeUInt64(1, this.value);
    }
    super.writeTo(output);
  }

  @Override
  protected int computeSerializedSize() {
    int size = super.computeSerializedSize();
    if (this.value != 0L) {
      size += com.google.protobuf.nano.CodedOutputByteBufferNano
          .computeUInt64Size(1, this.value);
    }
    return size;
  }

  @Override
  public UInt64Value mergeFrom(
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
          this.value = input.readUInt64();
          break;
        }
      }
    }
  }

  public static UInt64Value parseFrom(byte[] data)
      throws com.google.protobuf.nano.InvalidProtocolBufferNanoException {
    return com.google.protobuf.nano.MessageNano.mergeFrom(new UInt64Value(), data);
  }

  public static UInt64Value parseFrom(
          com.google.protobuf.nano.CodedInputByteBufferNano input)
      throws java.io.IOException {
    return new UInt64Value().mergeFrom(input);
  }
}
