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
      identifier = { name = "curryer-rpc"; version = "0.3.3"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "agentm@themactionfaction.com";
      author = "AgentM";
      homepage = "https://github.com/agentm/curryer";
      url = "";
      synopsis = "Fast, Haskell RPC";
      description = "Haskell-to-Haskell RPC using Winery serialization.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."winery" or (errorHandler.buildDepError "winery"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
          (hsPkgs."streamly-core" or (errorHandler.buildDepError "streamly-core"))
          (hsPkgs."streamly-bytestring" or (errorHandler.buildDepError "streamly-bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."fast-builder" or (errorHandler.buildDepError "fast-builder"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."network-byte-order" or (errorHandler.buildDepError "network-byte-order"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
      exes = {
        "SimpleKeyValueServer" = {
          depends = [
            (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."curryer-rpc" or (errorHandler.buildDepError "curryer-rpc"))
            (hsPkgs."winery" or (errorHandler.buildDepError "winery"))
          ];
          buildable = true;
        };
        "SimpleKeyValueClient" = {
          depends = [
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."curryer-rpc" or (errorHandler.buildDepError "curryer-rpc"))
            (hsPkgs."winery" or (errorHandler.buildDepError "winery"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."curryer-rpc" or (errorHandler.buildDepError "curryer-rpc"))
            (hsPkgs."winery" or (errorHandler.buildDepError "winery"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."streamly-core" or (errorHandler.buildDepError "streamly-core"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."streamly-bytestring" or (errorHandler.buildDepError "streamly-bytestring"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "perf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."curryer-rpc" or (errorHandler.buildDepError "curryer-rpc"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."winery" or (errorHandler.buildDepError "winery"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
    };
  }