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
      specVersion = "3.8";
      identifier = { name = "yamlet-aeson"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrzej@rybczak.net";
      author = "Andrzej Rybczak";
      homepage = "";
      url = "";
      synopsis = "Use the FromJSON and ToJSON instances of aeson with yamlet.";
      description = "Instances of @FromYaml@ and @ToYaml@ of\n<https://hackage.haskell.org/package/yamlet yamlet> for the types that have\n@FromJSON@ and @ToJSON@ instances of\n<https://hackage.haskell.org/package/aeson aeson>, e.g. in a program that\nmoves from the yaml package to yamlet. Errors point to the node of the input\nthat caused them, and the encoder keeps the order of the fields of a type\nwhose instance defines @toEncoding@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."yamlet" or (errorHandler.buildDepError "yamlet"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."yamlet" or (errorHandler.buildDepError "yamlet"))
            (hsPkgs."yamlet-aeson" or (errorHandler.buildDepError "yamlet-aeson"))
          ];
          buildable = true;
        };
        "retention" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."ghc-heap" or (errorHandler.buildDepError "ghc-heap"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."yamlet" or (errorHandler.buildDepError "yamlet"))
            (hsPkgs."yamlet-aeson" or (errorHandler.buildDepError "yamlet-aeson"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."yamlet" or (errorHandler.buildDepError "yamlet"))
            (hsPkgs."yamlet-aeson" or (errorHandler.buildDepError "yamlet-aeson"))
          ];
          buildable = true;
        };
      };
    };
  }