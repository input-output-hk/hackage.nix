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
      identifier = { name = "hs-json-rpc"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2012 ARJANEN Loïc";
      maintainer = "arjanen.loic@gmail.com";
      author = "ARJANEN Loïc Jean David";
      homepage = "http://patch-tag.com/r/Azel/hs-json-rpc";
      url = "";
      synopsis = "JSON-RPC client library";
      description = "hs-json-rpc is a library for writing JSON-RPC\nclient applications in Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }