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
      examples = false;
      expose-core = false;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "Yampa"; version = "0.14.10"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ivan Perez (ivan.perez@keera.co.uk)";
      author = "Henrik Nilsson, Antony Courtney";
      homepage = "https://github.com/ivanperez-keera/Yampa/";
      url = "";
      synopsis = "Elegant Functional Reactive Programming Language for Hybrid Systems";
      description = "Domain-specific language embedded in Haskell for programming hybrid (mixed\ndiscrete-time and continuous-time) systems. Yampa is based on the concepts of\nFunctional Reactive Programming (FRP).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."simple-affine-space" or (errorHandler.buildDepError "simple-affine-space"))
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs."fail" or (errorHandler.buildDepError "fail"));
        buildable = true;
      };
      exes = {
        "yampa-examples-sdl-bouncingbox" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
          ];
          buildable = if flags.examples then true else false;
        };
        "yampa-examples-sdl-circlingmouse" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
          ];
          buildable = if flags.examples then true else false;
        };
        "yampa-examples-sdl-wiimote" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hcwiid" or (errorHandler.buildDepError "hcwiid"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
          ];
          buildable = if flags.examples then true else false;
        };
        "yampa-examples-elevator" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
          ];
          buildable = if flags.examples then true else false;
        };
        "yampa-examples-tailgatingdetector" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
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
      };
      benchmarks = {
        "yampa-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
          ];
          buildable = true;
        };
      };
    };
  }