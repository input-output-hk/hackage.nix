{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "http-media"; version = "0.6.4"; };
      license = "MIT";
      copyright = "(c) 2012-2016 Timothy Jones";
      maintainer = "Timothy Jones <tim@zmthy.net>";
      author = "Timothy Jones";
      homepage = "https://github.com/zmthy/http-media";
      url = "";
      synopsis = "Processing HTTP Content-Type and Accept headers";
      description = "This library is intended to be a comprehensive solution to parsing and\nselecting quality-indexed values in HTTP headers. It is capable of parsing\nboth media types and language parameters from the Accept and Content header\nfamilies, and can be extended to match against other accept headers as well.\nSelecting the appropriate header value is achieved by comparing a list of\nserver options against the quality-indexed values supplied by the client.\n\nIn the following example, the Accept header is parsed and then matched against\na list of server options to serve the appropriate media using\n'mapAcceptMedia':\n\n> getHeader >>= maybe send406Error sendResourceWith . mapAcceptMedia\n>     [ (\"text/html\",        asHtml)\n>     , (\"application/json\", asJson)\n>     ]\n\nSimilarly, the Content-Type header can be used to produce a parser for request\nbodies based on the given content type with 'mapContentMedia':\n\n> getContentType >>= maybe send415Error readRequestBodyWith . mapContentMedia\n>     [ (\"application/json\", parseJson)\n>     , (\"text/plain\",       parseText)\n>     ]\n\nThe API is agnostic to your choice of server.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      tests = {
        "test-http-media" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = true;
        };
      };
    };
  }