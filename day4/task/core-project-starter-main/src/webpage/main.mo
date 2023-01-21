import Http = "http";
import Text = "mo:base/Text";

actor {
  public query func hello() : async Text {
    return "Hello, world!";
  };

  public type HttpRequest = Http.HttpRequest;
  public type HttpResponse = Http.HttpResponse;

  public query func http_request(req : HttpRequest) : async HttpResponse {
    return ({
      body = Text.encodeUtf8("Hello, world!");
      status_code = 200;
      headers = [];
      streaming_strategy = null;
    })
  };
};