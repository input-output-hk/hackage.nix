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
      identifier = { name = "wai-thrift"; version = "0.0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "yogesh_sajanikar@yahoo.com";
      author = "Yogesh Sajanikar";
      homepage = "https://github.com/yogeshsajanikar/wai-thrift";
      url = "";
      synopsis = "Thrift transport layer for Wai";
      description = "Implements a read-only transport layer for Wai\nRequest, and write-only transport layer for Wai\nstreaming body.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."thrift" or (errorHandler.buildDepError "thrift"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
        ];
        buildable = true;
      };
    };
  }