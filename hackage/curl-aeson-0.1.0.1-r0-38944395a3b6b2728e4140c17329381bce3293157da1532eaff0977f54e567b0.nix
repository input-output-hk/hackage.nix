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
      identifier = { name = "curl-aeson"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "joel.lehtonen+curlaeson@iki.fi";
      author = "Joel Lehtonen";
      homepage = "https://github.com/zouppen/haskell-curl-aeson";
      url = "";
      synopsis = "Communicate with web services using JSON ";
      description = "A library for communicating with JSON over HTTP(S)\nor any other protocols supported by cURL.\nconnection.\n\nSupports rich set of connectivity\nfeatures provided by libcurl combined to the\nperformance and elegancy of aeson.\n\nAll HTTP methods are supported. Instances of 'ToJSON'\nand 'FromJSON' typeclasses can be transferred via\nthis library. Session cookies and other HTTP options\nmay be passed to libcurl if needed.\n\nThis library is at its best when communicating with\nsimple, non-standardized JSON interfaces. If you are\nimplementing JSON-RPC compliant client or server,\ntake a look at\n<http://hackage.haskell.org/package/jmacro-rpc>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }