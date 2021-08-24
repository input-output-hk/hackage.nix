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
      specVersion = "1.12";
      identifier = { name = "ixset-typed-cassava"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "Daniel Firth";
      maintainer = "dan.firth@homtopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "cassava encoding and decoding via ixset-typed";
      description = "cassava encoding and decoding via ixset-typed";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."ixset-typed" or (errorHandler.buildDepError "ixset-typed"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }