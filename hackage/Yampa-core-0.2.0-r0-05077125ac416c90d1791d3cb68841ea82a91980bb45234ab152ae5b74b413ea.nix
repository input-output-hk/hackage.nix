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
    flags = { test-hlint = false; test-afrp = false; examples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "Yampa-core"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mykola Orliuk (virkony@gmail.com)";
      author = "Henrik Nilsson, Antony Courtney";
      homepage = "https://github.com/ony/Yampa-core";
      url = "";
      synopsis = "Library for programming hybrid systems.";
      description = "Domain-specific language embedded in Haskell for programming\nhybrid (mixed discrete-time and continuous-time) systems. Yampa is based on\nthe concepts of Functional Reactive Programming (FRP) and is structured using\narrow combinators. Yampa-core is a fork of Yampa that prefer to use other\nHaskell libraries like deepseq and vector-space.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
      exes = {
        "YampaElevator" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Yampa-core" or (errorHandler.buildDepError "Yampa-core"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "YampaTailgatingDetector" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Yampa-core" or (errorHandler.buildDepError "Yampa-core"))
          ];
          buildable = if !flags.examples then false else true;
        };
      };
      tests = {
        "hlint" = {
          depends = pkgs.lib.optionals (!!flags.test-hlint) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
          ];
          buildable = if !flags.test-hlint then false else true;
        };
        "testAFRP" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Yampa-core" or (errorHandler.buildDepError "Yampa-core"))
          ];
          buildable = if !flags.test-afrp then false else true;
        };
      };
    };
  }