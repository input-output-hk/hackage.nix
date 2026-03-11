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
      identifier = { name = "zwirn"; version = "0.2.2.0"; };
      license = "GPL-3.0-only";
      copyright = "Martin Gius";
      maintainer = "Martin Gius";
      author = "Martin Gius";
      homepage = "";
      url = "";
      synopsis = "a live coding language for playing with nested functions of time";
      description = "zwirn is a live coding language for playing with nested functions of time,\nwhich trigger the sending of osc-messages. it's syntax is inspired by TidalCycles'\nmini-notation and its API for manipulating patterns.";
      buildType = "Simple";
    };
    components = {
      sublibs = {
        "zwirn-core" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hmt" or (errorHandler.buildDepError "hmt"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."pure-noise" or (errorHandler.buildDepError "pure-noise"))
          ];
          buildable = true;
        };
        "zwirn-lang" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."zwirn".components.sublibs.zwirn-core or (errorHandler.buildDepError "zwirn:zwirn-core"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."tidal-link" or (errorHandler.buildDepError "tidal-link"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.alex.components.exes.alex or (pkgs.pkgsBuildBuild.alex or (errorHandler.buildToolDepError "alex:alex")))
            (hsPkgs.pkgsBuildBuild.happy.components.exes.happy or (pkgs.pkgsBuildBuild.happy or (errorHandler.buildToolDepError "happy:happy")))
          ];
          buildable = true;
        };
      };
      exes = {
        "zwirnzi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."zwirn".components.sublibs.zwirn-core or (errorHandler.buildDepError "zwirn:zwirn-core"))
            (hsPkgs."zwirn".components.sublibs.zwirn-lang or (errorHandler.buildDepError "zwirn:zwirn-lang"))
            (hsPkgs."tidal-link" or (errorHandler.buildDepError "tidal-link"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."lsp" or (errorHandler.buildDepError "lsp"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."file-io" or (errorHandler.buildDepError "file-io"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."conferer" or (errorHandler.buildDepError "conferer"))
            (hsPkgs."conferer-yaml" or (errorHandler.buildDepError "conferer-yaml"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."text-rope" or (errorHandler.buildDepError "text-rope"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          ];
          buildable = true;
        };
        "zwirn-plot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."zwirn".components.sublibs.zwirn-core or (errorHandler.buildDepError "zwirn:zwirn-core"))
            (hsPkgs."easyplot" or (errorHandler.buildDepError "easyplot"))
          ];
          buildable = true;
        };
        "zwirn-docs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."zwirn".components.sublibs.zwirn-lang or (errorHandler.buildDepError "zwirn:zwirn-lang"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."file-io" or (errorHandler.buildDepError "file-io"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test-zwirn-core" = {
          depends = [
            (hsPkgs."zwirn".components.sublibs.zwirn-core or (errorHandler.buildDepError "zwirn:zwirn-core"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
        "test-zwirn-lang" = {
          depends = [
            (hsPkgs."zwirn".components.sublibs.zwirn-lang or (errorHandler.buildDepError "zwirn:zwirn-lang"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench-zwirn-core" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."zwirn".components.sublibs.zwirn-core or (errorHandler.buildDepError "zwirn:zwirn-core"))
          ];
          buildable = true;
        };
      };
    };
  }