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
      specVersion = "1.6";
      identifier = { name = "curl-aeson"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "joel.lehtonen+curlaeson@iki.fi";
      author = "Joel Lehtonen";
      homepage = "https://github.com/zouppen/haskell-curl-aeson";
      url = "";
      synopsis = "Communicate with HTTP service using JSON ";
      description = "A library for communicating with JSON over HTTP connection.\nSupports rich set of HTTP connectivity features provided by\nlibcurl combined to the performance and elegancy of aeson.\n\nAll HTTP methods are supported. Instances of 'ToJSON' and\n'FromJSON' typeclasses can be transferred via this library.\nSession cookies and other HTTP options may be passed to libcurl\nif needed.\n\nThis library is at its best when communicating with simple,\nnon-standardized JSON interfaces. If you are implementing\nJSON-RPC compliant client or server, take a look at\n<http://hackage.haskell.org/package/jmacro-rpc>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }