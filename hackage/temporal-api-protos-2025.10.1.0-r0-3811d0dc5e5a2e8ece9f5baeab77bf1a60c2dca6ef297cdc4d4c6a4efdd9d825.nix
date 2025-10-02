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
      specVersion = "3.0";
      identifier = { name = "temporal-api-protos"; version = "2025.10.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "temporal@mercury.com";
      author = "Ian Duncan";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Temporal is a durable execution system that transparently makes your code durable, fault-tolerant, and simple. These are low-level protocol buffer definitions for the Temporal API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."proto-lens-protobuf-types" or (errorHandler.buildDepError "proto-lens-protobuf-types"))
          (hsPkgs."proto-lens-runtime" or (errorHandler.buildDepError "proto-lens-runtime"))
        ];
        buildable = true;
      };
    };
  }