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
      identifier = { name = "persistent-protobuf"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2012 Akamai Technologies, Inc.";
      maintainer = "mistone@akamai.com";
      author = "Michael Stone";
      homepage = "https://github.com/mstone/persistent-protobuf";
      url = "";
      synopsis = "Template-Haskell helpers for integrating protobufs with persistent.";
      description = "Template-Haskell helpers for integrating protobufs with persistent.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."protocol-buffers" or (errorHandler.buildDepError "protocol-buffers"))
          (hsPkgs."protocol-buffers-descriptor" or (errorHandler.buildDepError "protocol-buffers-descriptor"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }