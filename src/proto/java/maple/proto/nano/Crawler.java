// Generated by the protocol buffer compiler.  DO NOT EDIT!

package maple.proto.nano;

@SuppressWarnings("hiding")
public interface Crawler {

  public static final class RPCCrawlerGetSiteInfoRequest extends
      com.google.protobuf.nano.MessageNano {

    private static volatile RPCCrawlerGetSiteInfoRequest[] _emptyArray;
    public static RPCCrawlerGetSiteInfoRequest[] emptyArray() {
      // Lazily initializes the empty array
      if (_emptyArray == null) {
        synchronized (
            com.google.protobuf.nano.InternalNano.LAZY_INIT_LOCK) {
          if (_emptyArray == null) {
            _emptyArray = new RPCCrawlerGetSiteInfoRequest[0];
          }
        }
      }
      return _emptyArray;
    }

    // optional string url = 1;
    public java.lang.String url;

    public RPCCrawlerGetSiteInfoRequest() {
      clear();
    }

    public RPCCrawlerGetSiteInfoRequest clear() {
      url = "";
      cachedSize = -1;
      return this;
    }

    @Override
    public void writeTo(com.google.protobuf.nano.CodedOutputByteBufferNano output)
        throws java.io.IOException {
      if (!this.url.equals("")) {
        output.writeString(1, this.url);
      }
      super.writeTo(output);
    }

    @Override
    protected int computeSerializedSize() {
      int size = super.computeSerializedSize();
      if (!this.url.equals("")) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
            .computeStringSize(1, this.url);
      }
      return size;
    }

    @Override
    public RPCCrawlerGetSiteInfoRequest mergeFrom(
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
            this.url = input.readString();
            break;
          }
        }
      }
    }

    public static RPCCrawlerGetSiteInfoRequest parseFrom(byte[] data)
        throws com.google.protobuf.nano.InvalidProtocolBufferNanoException {
      return com.google.protobuf.nano.MessageNano.mergeFrom(new RPCCrawlerGetSiteInfoRequest(), data);
    }

    public static RPCCrawlerGetSiteInfoRequest parseFrom(
            com.google.protobuf.nano.CodedInputByteBufferNano input)
        throws java.io.IOException {
      return new RPCCrawlerGetSiteInfoRequest().mergeFrom(input);
    }
  }

  public static final class RPCCrawlerGetSiteInfoResponse extends
      com.google.protobuf.nano.MessageNano {

    private static volatile RPCCrawlerGetSiteInfoResponse[] _emptyArray;
    public static RPCCrawlerGetSiteInfoResponse[] emptyArray() {
      // Lazily initializes the empty array
      if (_emptyArray == null) {
        synchronized (
            com.google.protobuf.nano.InternalNano.LAZY_INIT_LOCK) {
          if (_emptyArray == null) {
            _emptyArray = new RPCCrawlerGetSiteInfoResponse[0];
          }
        }
      }
      return _emptyArray;
    }

    // optional .proto.CrawlerGetSiteInfoResponse.ErrorType error = 1;
    @maple.proto.nano.Crawler.CrawlerGetSiteInfoResponse.ErrorType
    public int error;

    // optional .proto.WebsiteInfo site_info = 2;
    public maple.proto.nano.Crawler.WebsiteInfo siteInfo;

    public RPCCrawlerGetSiteInfoResponse() {
      clear();
    }

    public RPCCrawlerGetSiteInfoResponse clear() {
      error = maple.proto.nano.Crawler.CrawlerGetSiteInfoResponse.NONE;
      siteInfo = null;
      cachedSize = -1;
      return this;
    }

    @Override
    public void writeTo(com.google.protobuf.nano.CodedOutputByteBufferNano output)
        throws java.io.IOException {
      if (this.error != maple.proto.nano.Crawler.CrawlerGetSiteInfoResponse.NONE) {
        output.writeInt32(1, this.error);
      }
      if (this.siteInfo != null) {
        output.writeMessage(2, this.siteInfo);
      }
      super.writeTo(output);
    }

    @Override
    protected int computeSerializedSize() {
      int size = super.computeSerializedSize();
      if (this.error != maple.proto.nano.Crawler.CrawlerGetSiteInfoResponse.NONE) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
          .computeInt32Size(1, this.error);
      }
      if (this.siteInfo != null) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
          .computeMessageSize(2, this.siteInfo);
      }
      return size;
    }

    @Override
    public RPCCrawlerGetSiteInfoResponse mergeFrom(
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
              case maple.proto.nano.Crawler.CrawlerGetSiteInfoResponse.NONE:
              case maple.proto.nano.Crawler.CrawlerGetSiteInfoResponse.BAD_REQUEST:
              case maple.proto.nano.Crawler.CrawlerGetSiteInfoResponse.FORBIDDEN:
              case maple.proto.nano.Crawler.CrawlerGetSiteInfoResponse.UNKNOWN_ERROR:
              case maple.proto.nano.Crawler.CrawlerGetSiteInfoResponse.PAGE_NOT_FOUND:
              case maple.proto.nano.Crawler.CrawlerGetSiteInfoResponse.COULD_NOT_DECODE:
              case maple.proto.nano.Crawler.CrawlerGetSiteInfoResponse.COULD_NOT_CRAWL:
                this.error = value;
                break;
            }
            break;
          }
          case 18: {
            if (this.siteInfo == null) {
              this.siteInfo = new maple.proto.nano.Crawler.WebsiteInfo();
            }
            input.readMessage(this.siteInfo);
            break;
          }
        }
      }
    }

    public static RPCCrawlerGetSiteInfoResponse parseFrom(byte[] data)
        throws com.google.protobuf.nano.InvalidProtocolBufferNanoException {
      return com.google.protobuf.nano.MessageNano.mergeFrom(new RPCCrawlerGetSiteInfoResponse(), data);
    }

    public static RPCCrawlerGetSiteInfoResponse parseFrom(
            com.google.protobuf.nano.CodedInputByteBufferNano input)
        throws java.io.IOException {
      return new RPCCrawlerGetSiteInfoResponse().mergeFrom(input);
    }
  }

  public static final class CrawlerGetSiteInfoResponse extends
      com.google.protobuf.nano.MessageNano {

    // enum ErrorType
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    @android.support.annotation.IntDef({
      NONE,
      BAD_REQUEST,
      FORBIDDEN,
      UNKNOWN_ERROR,
      PAGE_NOT_FOUND,
      COULD_NOT_DECODE,
      COULD_NOT_CRAWL,
    })
    public @interface ErrorType {
    }

    public static final int NONE = 0;
    public static final int BAD_REQUEST = 1;
    public static final int FORBIDDEN = 2;
    public static final int UNKNOWN_ERROR = 3;
    public static final int PAGE_NOT_FOUND = 4;
    public static final int COULD_NOT_DECODE = 5;
    public static final int COULD_NOT_CRAWL = 6;

    private static volatile CrawlerGetSiteInfoResponse[] _emptyArray;
    public static CrawlerGetSiteInfoResponse[] emptyArray() {
      // Lazily initializes the empty array
      if (_emptyArray == null) {
        synchronized (
            com.google.protobuf.nano.InternalNano.LAZY_INIT_LOCK) {
          if (_emptyArray == null) {
            _emptyArray = new CrawlerGetSiteInfoResponse[0];
          }
        }
      }
      return _emptyArray;
    }

    // optional .proto.CrawlerGetSiteInfoResponse.ErrorType error = 1;
    @maple.proto.nano.Crawler.CrawlerGetSiteInfoResponse.ErrorType
    public int error;

    // optional .proto.WebsiteInfo site_info = 2;
    public maple.proto.nano.Crawler.WebsiteInfo siteInfo;

    public CrawlerGetSiteInfoResponse() {
      clear();
    }

    public CrawlerGetSiteInfoResponse clear() {
      error = maple.proto.nano.Crawler.CrawlerGetSiteInfoResponse.NONE;
      siteInfo = null;
      cachedSize = -1;
      return this;
    }

    @Override
    public void writeTo(com.google.protobuf.nano.CodedOutputByteBufferNano output)
        throws java.io.IOException {
      if (this.error != maple.proto.nano.Crawler.CrawlerGetSiteInfoResponse.NONE) {
        output.writeInt32(1, this.error);
      }
      if (this.siteInfo != null) {
        output.writeMessage(2, this.siteInfo);
      }
      super.writeTo(output);
    }

    @Override
    protected int computeSerializedSize() {
      int size = super.computeSerializedSize();
      if (this.error != maple.proto.nano.Crawler.CrawlerGetSiteInfoResponse.NONE) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
          .computeInt32Size(1, this.error);
      }
      if (this.siteInfo != null) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
          .computeMessageSize(2, this.siteInfo);
      }
      return size;
    }

    @Override
    public CrawlerGetSiteInfoResponse mergeFrom(
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
              case maple.proto.nano.Crawler.CrawlerGetSiteInfoResponse.NONE:
              case maple.proto.nano.Crawler.CrawlerGetSiteInfoResponse.BAD_REQUEST:
              case maple.proto.nano.Crawler.CrawlerGetSiteInfoResponse.FORBIDDEN:
              case maple.proto.nano.Crawler.CrawlerGetSiteInfoResponse.UNKNOWN_ERROR:
              case maple.proto.nano.Crawler.CrawlerGetSiteInfoResponse.PAGE_NOT_FOUND:
              case maple.proto.nano.Crawler.CrawlerGetSiteInfoResponse.COULD_NOT_DECODE:
              case maple.proto.nano.Crawler.CrawlerGetSiteInfoResponse.COULD_NOT_CRAWL:
                this.error = value;
                break;
            }
            break;
          }
          case 18: {
            if (this.siteInfo == null) {
              this.siteInfo = new maple.proto.nano.Crawler.WebsiteInfo();
            }
            input.readMessage(this.siteInfo);
            break;
          }
        }
      }
    }

    public static CrawlerGetSiteInfoResponse parseFrom(byte[] data)
        throws com.google.protobuf.nano.InvalidProtocolBufferNanoException {
      return com.google.protobuf.nano.MessageNano.mergeFrom(new CrawlerGetSiteInfoResponse(), data);
    }

    public static CrawlerGetSiteInfoResponse parseFrom(
            com.google.protobuf.nano.CodedInputByteBufferNano input)
        throws java.io.IOException {
      return new CrawlerGetSiteInfoResponse().mergeFrom(input);
    }
  }

  public static final class WebsiteInfo extends
      com.google.protobuf.nano.MessageNano {

    // enum WebsiteType
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    @android.support.annotation.IntDef({
      UNKNOWN,
      WIKI,
      FORUM,
    })
    public @interface WebsiteType {
    }

    public static final int UNKNOWN = 0;
    public static final int WIKI = 1;
    public static final int FORUM = 2;

    private static volatile WebsiteInfo[] _emptyArray;
    public static WebsiteInfo[] emptyArray() {
      // Lazily initializes the empty array
      if (_emptyArray == null) {
        synchronized (
            com.google.protobuf.nano.InternalNano.LAZY_INIT_LOCK) {
          if (_emptyArray == null) {
            _emptyArray = new WebsiteInfo[0];
          }
        }
      }
      return _emptyArray;
    }

    // optional string url = 1;
    public java.lang.String url;

    // optional string canonical_url = 2;
    public java.lang.String canonicalUrl;

    // optional string title = 3;
    public java.lang.String title;

    // optional string description = 4;
    public java.lang.String description;

    // repeated string keywords = 5;
    public java.lang.String[] keywords;

    // optional string language = 6;
    public java.lang.String language;

    // optional .proto.WebsiteInfo.WebsiteType site_type = 7;
    @maple.proto.nano.Crawler.WebsiteInfo.WebsiteType
    public int siteType;

    // optional string topic = 8;
    public java.lang.String topic;

    // optional .proto.WebsiteColors colors = 9;
    public maple.proto.nano.Crawler.WebsiteColors colors;

    // optional string short_name = 10;
    public java.lang.String shortName;

    // optional string image_url = 11;
    public java.lang.String imageUrl;

    // optional string icon_url = 12;
    public java.lang.String iconUrl;

    public WebsiteInfo() {
      clear();
    }

    public WebsiteInfo clear() {
      url = "";
      canonicalUrl = "";
      title = "";
      description = "";
      keywords = com.google.protobuf.nano.WireFormatNano.EMPTY_STRING_ARRAY;
      language = "";
      siteType = maple.proto.nano.Crawler.WebsiteInfo.UNKNOWN;
      topic = "";
      colors = null;
      shortName = "";
      imageUrl = "";
      iconUrl = "";
      cachedSize = -1;
      return this;
    }

    @Override
    public void writeTo(com.google.protobuf.nano.CodedOutputByteBufferNano output)
        throws java.io.IOException {
      if (!this.url.equals("")) {
        output.writeString(1, this.url);
      }
      if (!this.canonicalUrl.equals("")) {
        output.writeString(2, this.canonicalUrl);
      }
      if (!this.title.equals("")) {
        output.writeString(3, this.title);
      }
      if (!this.description.equals("")) {
        output.writeString(4, this.description);
      }
      if (this.keywords != null && this.keywords.length > 0) {
        for (int i = 0; i < this.keywords.length; i++) {
          java.lang.String element = this.keywords[i];
          if (element != null) {
            output.writeString(5, element);
          }
        }
      }
      if (!this.language.equals("")) {
        output.writeString(6, this.language);
      }
      if (this.siteType != maple.proto.nano.Crawler.WebsiteInfo.UNKNOWN) {
        output.writeInt32(7, this.siteType);
      }
      if (!this.topic.equals("")) {
        output.writeString(8, this.topic);
      }
      if (this.colors != null) {
        output.writeMessage(9, this.colors);
      }
      if (!this.shortName.equals("")) {
        output.writeString(10, this.shortName);
      }
      if (!this.imageUrl.equals("")) {
        output.writeString(11, this.imageUrl);
      }
      if (!this.iconUrl.equals("")) {
        output.writeString(12, this.iconUrl);
      }
      super.writeTo(output);
    }

    @Override
    protected int computeSerializedSize() {
      int size = super.computeSerializedSize();
      if (!this.url.equals("")) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
            .computeStringSize(1, this.url);
      }
      if (!this.canonicalUrl.equals("")) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
            .computeStringSize(2, this.canonicalUrl);
      }
      if (!this.title.equals("")) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
            .computeStringSize(3, this.title);
      }
      if (!this.description.equals("")) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
            .computeStringSize(4, this.description);
      }
      if (this.keywords != null && this.keywords.length > 0) {
        int dataCount = 0;
        int dataSize = 0;
        for (int i = 0; i < this.keywords.length; i++) {
          java.lang.String element = this.keywords[i];
          if (element != null) {
            dataCount++;
            dataSize += com.google.protobuf.nano.CodedOutputByteBufferNano
                .computeStringSizeNoTag(element);
          }
        }
        size += dataSize;
        size += 1 * dataCount;
      }
      if (!this.language.equals("")) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
            .computeStringSize(6, this.language);
      }
      if (this.siteType != maple.proto.nano.Crawler.WebsiteInfo.UNKNOWN) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
          .computeInt32Size(7, this.siteType);
      }
      if (!this.topic.equals("")) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
            .computeStringSize(8, this.topic);
      }
      if (this.colors != null) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
          .computeMessageSize(9, this.colors);
      }
      if (!this.shortName.equals("")) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
            .computeStringSize(10, this.shortName);
      }
      if (!this.imageUrl.equals("")) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
            .computeStringSize(11, this.imageUrl);
      }
      if (!this.iconUrl.equals("")) {
        size += com.google.protobuf.nano.CodedOutputByteBufferNano
            .computeStringSize(12, this.iconUrl);
      }
      return size;
    }

    @Override
    public WebsiteInfo mergeFrom(
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
            this.url = input.readString();
            break;
          }
          case 18: {
            this.canonicalUrl = input.readString();
            break;
          }
          case 26: {
            this.title = input.readString();
            break;
          }
          case 34: {
            this.description = input.readString();
            break;
          }
          case 42: {
            int arrayLength = com.google.protobuf.nano.WireFormatNano
                .getRepeatedFieldArrayLength(input, 42);
            int i = this.keywords == null ? 0 : this.keywords.length;
            java.lang.String[] newArray = new java.lang.String[i + arrayLength];
            if (i != 0) {
              java.lang.System.arraycopy(this.keywords, 0, newArray, 0, i);
            }
            for (; i < newArray.length - 1; i++) {
              newArray[i] = input.readString();
              input.readTag();
            }
            // Last one without readTag.
            newArray[i] = input.readString();
            this.keywords = newArray;
            break;
          }
          case 50: {
            this.language = input.readString();
            break;
          }
          case 56: {
            int value = input.readInt32();
            switch (value) {
              case maple.proto.nano.Crawler.WebsiteInfo.UNKNOWN:
              case maple.proto.nano.Crawler.WebsiteInfo.WIKI:
              case maple.proto.nano.Crawler.WebsiteInfo.FORUM:
                this.siteType = value;
                break;
            }
            break;
          }
          case 66: {
            this.topic = input.readString();
            break;
          }
          case 74: {
            if (this.colors == null) {
              this.colors = new maple.proto.nano.Crawler.WebsiteColors();
            }
            input.readMessage(this.colors);
            break;
          }
          case 82: {
            this.shortName = input.readString();
            break;
          }
          case 90: {
            this.imageUrl = input.readString();
            break;
          }
          case 98: {
            this.iconUrl = input.readString();
            break;
          }
        }
      }
    }

    public static WebsiteInfo parseFrom(byte[] data)
        throws com.google.protobuf.nano.InvalidProtocolBufferNanoException {
      return com.google.protobuf.nano.MessageNano.mergeFrom(new WebsiteInfo(), data);
    }

    public static WebsiteInfo parseFrom(
            com.google.protobuf.nano.CodedInputByteBufferNano input)
        throws java.io.IOException {
      return new WebsiteInfo().mergeFrom(input);
    }
  }

  public static final class WebsiteColors extends
      com.google.protobuf.nano.MessageNano {

    private static volatile WebsiteColors[] _emptyArray;
    public static WebsiteColors[] emptyArray() {
      // Lazily initializes the empty array
      if (_emptyArray == null) {
        synchronized (
            com.google.protobuf.nano.InternalNano.LAZY_INIT_LOCK) {
          if (_emptyArray == null) {
            _emptyArray = new WebsiteColors[0];
          }
        }
      }
      return _emptyArray;
    }

    public WebsiteColors() {
      clear();
    }

    public WebsiteColors clear() {
      cachedSize = -1;
      return this;
    }

    @Override
    public WebsiteColors mergeFrom(
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

    public static WebsiteColors parseFrom(byte[] data)
        throws com.google.protobuf.nano.InvalidProtocolBufferNanoException {
      return com.google.protobuf.nano.MessageNano.mergeFrom(new WebsiteColors(), data);
    }

    public static WebsiteColors parseFrom(
            com.google.protobuf.nano.CodedInputByteBufferNano input)
        throws java.io.IOException {
      return new WebsiteColors().mergeFrom(input);
    }
  }
}
