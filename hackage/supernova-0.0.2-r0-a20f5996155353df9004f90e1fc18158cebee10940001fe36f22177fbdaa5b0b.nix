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
      identifier = { name = "supernova"; version = "0.0.2"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "gabriel.volpe@chatroulette.com";
      author = "Gabriel Volpe";
      homepage = "https://github.com/cr-org/supernova";
      url = "";
      synopsis = "Apache Pulsar client for Haskell";
      description = "Supernova is an Apache Pulsar client that implements the specified TCP protocol.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctor" or (errorHandler.buildDepError "bifunctor"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."crc32c" or (errorHandler.buildDepError "crc32c"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."lens-family-core" or (errorHandler.buildDepError "lens-family-core"))
          (hsPkgs."logging" or (errorHandler.buildDepError "logging"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."managed" or (errorHandler.buildDepError "managed"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
          (hsPkgs."proto-lens-runtime" or (errorHandler.buildDepError "proto-lens-runtime"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
        ];
        buildable = true;
      };
      tests = {
        "supernova-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."supernova" or (errorHandler.buildDepError "supernova"))
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }