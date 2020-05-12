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
      identifier = { name = "http-media"; version = "0.2.0"; };
      license = "MIT";
      copyright = "(c) 2012-2014 Timothy Jones";
      maintainer = "Timothy Jones <git@zmthy.io>";
      author = "Timothy Jones";
      homepage = "http://github.com/zmthy/http-media";
      url = "";
      synopsis = "Processing HTTP Content-Type and Accept headers";
      description = "This library is intended to be a comprehensive solution to parsing media\ntypes, including quality parameters, in HTTP headers. It addresses parsing of\nthe Content-Type and Accept headers, and includes general data types for\nmatching against the other accept headers as well. It encodes MIME parameters\ninto a 'MediaType' data, and allows the matching of the final value by\ncomparing quality values from the client.\n\nIn the following example, the Accept header is parsed, and then matched\nagainst a list of server options to serve the appropriate media:\n\n> getHeader >>= maybe send406Error sendResourceWith . mapAcceptMedia\n>     [ (\"text/html\",        asHtml)\n>     , (\"application/json\", asJson)\n>     ]\n\nSimilarly, the Content-Type header can be used to produce a parser for request\nbodies based on the given content type:\n\n> getContentType >>= maybe send415Error readRequestBodyWith . mapContentMedia\n>     [ (\"application/json\", parseJson)\n>     , (\"text/plain\",       parseText)\n>     ]\n\nThe API is agnostic to your choice of server.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      tests = {
        "test-http-media" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."cabal-test-quickcheck" or (errorHandler.buildDepError "cabal-test-quickcheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      };
    }