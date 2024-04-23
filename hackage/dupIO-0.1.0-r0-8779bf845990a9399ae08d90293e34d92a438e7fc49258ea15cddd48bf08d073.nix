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
    flags = { use-debug-rts = false; build-demos = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "dupIO"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP";
      maintainer = "edsko@well-typed.com";
      author = "Edsko de Vries\nJoachim Breitner\nDouglas Wilson";
      homepage = "";
      url = "";
      synopsis = "Duplicate any closure";
      description = "This is a revival of the old @ghc-dup@ package, and provides\na way to make shallow copies of closures.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ];
        buildable = true;
      };
      exes = {
        "demo-averageIO" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dupIO" or (errorHandler.buildDepError "dupIO"))
          ];
          buildable = if !flags.build-demos then false else true;
        };
        "demo-averageST" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dupIO" or (errorHandler.buildDepError "dupIO"))
          ];
          buildable = if !flags.build-demos then false else true;
        };
        "demo-conduit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dupIO" or (errorHandler.buildDepError "dupIO"))
          ];
          buildable = if !flags.build-demos then false else true;
        };
        "demo-conduit-ref" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dupIO" or (errorHandler.buildDepError "dupIO"))
          ];
          buildable = if !flags.build-demos then false else true;
        };
        "demo-leak-in-io" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dupIO" or (errorHandler.buildDepError "dupIO"))
          ];
          buildable = if !flags.build-demos then false else true;
        };
        "demo-gc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dupIO" or (errorHandler.buildDepError "dupIO"))
          ];
          buildable = if !flags.build-demos then false else true;
        };
      };
      tests = {
        "test-dupIO" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dupIO" or (errorHandler.buildDepError "dupIO"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }