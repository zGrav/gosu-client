// Generated by the protocol buffer compiler.  DO NOT EDIT!

package com.google.protobuf.nano;

@SuppressWarnings("hiding")
public final class BytesValue extends
    com.google.protobuf.nano.MessageNano {

  private static volatile BytesValue[] _emptyArray;
  public static BytesValue[] emptyArray() {
    // Lazily initializes the empty array
    if (_emptyArray == null) {
      synchronized (
          com.google.protobuf.nano.InternalNano.LAZY_INIT_LOCK) {
        if (_emptyArray == null) {
          _emptyArray = new BytesValue[0];
        }
      }
    }
    return _emptyArray;
  }

  // optional bytes value = 1;
  public byte[] value;

  public BytesValue() {
    clear();
  }

  public BytesValue clear() {
    value = com.google.protobuf.nano.WireFormatNano.EMPTY_BYTES;
    cachedSize = -1;
    return this;
  }

  @Override
  public void writeTo(com.google.protobuf.nano.CodedOutputByteBufferNano output)
      throws java.io.IOException {
    if (!java.util.Arrays.equals(this.value, com.google.protobuf.nano.WireFormatNano.EMPTY_BYTES)) {
      output.writeBytes(1, this.value);
    }
    super.writeTo(output);
  }

  @Override
  protected int computeSerializedSize() {
    int size = super.computeSerializedSize();
    if (!java.util.Arrays.equals(this.value, com.google.protobuf.nano.WireFormatNano.EMPTY_BYTES)) {
      size += com.google.protobuf.nano.CodedOutputByteBufferNano
          .computeBytesSize(1, this.value);
    }
    return size;
  }

  @Override
  public BytesValue mergeFrom(
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
          this.value = input.readBytes();
          break;
        }
      }
    }
  }

  public static BytesValue parseFrom(byte[] data)
      throws com.google.protobuf.nano.InvalidProtocolBufferNanoException {
    return com.google.protobuf.nano.MessageNano.mergeFrom(new BytesValue(), data);
  }

  public static BytesValue parseFrom(
          com.google.protobuf.nano.CodedInputByteBufferNano input)
      throws java.io.IOException {
    return new BytesValue().mergeFrom(input);
  }
}
