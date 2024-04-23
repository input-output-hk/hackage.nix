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
    flags = {
      test-hlint = false;
      test-doc-coverage = false;
      test-regression = true;
      examples = false;
    };
    package = {
      specVersion = "1.8";
      identifier = { name = "Yampa"; version = "0.10.6.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ivan Perez (ivan.perez@keera.co.uk)";
      author = "Henrik Nilsson, Antony Courtney";
      homepage = "http://www.haskell.org/haskellwiki/Yampa";
      url = "";
      synopsis = "Library for programming hybrid systems.";
      description = "Domain-specific language embedded in Haskell for programming\nhybrid (mixed discrete-time and continuous-time) systems. Yampa is based on\nthe concepts of Functional Reactive Programming (FRP) and is structured using\narrow combinators.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
      exes = {
        "yampa-examples-sdl-bouncingbox" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
          ];
          buildable = if flags.examples then true else false;
        };
        "yampa-examples-sdl-circlingmouse" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
          ];
          buildable = if flags.examples then true else false;
        };
        "yampa-examples-sdl-wiimote" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."hcwiid" or (errorHandler.buildDepError "hcwiid"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
          ];
          buildable = if flags.examples then true else false;
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
        "haddock-coverage" = {
          depends = pkgs.lib.optionals (!!flags.test-doc-coverage) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          ];
          buildable = if !flags.test-doc-coverage then false else true;
        };
        "regression" = {
          depends = pkgs.lib.optionals (!!flags.test-regression) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
          ];
          buildable = if !flags.test-regression then false else true;
        };
      };
    };
  }