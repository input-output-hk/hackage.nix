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
      identifier = { name = "time"; version = "1.16"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "<ashley@semantic.org>";
      author = "Ashley Yakeley";
      homepage = "https://github.com/haskell/time";
      url = "";
      synopsis = "A time library";
      description = "Time, clocks and calendars";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ] ++ (if compiler.isGhc && compiler.version.lt "9.14"
          then [
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ]
          else pkgs.lib.optional (compiler.isGhc && true) (hsPkgs."template-haskell-lift" or (errorHandler.buildDepError "template-haskell-lift")))) ++ pkgs.lib.optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
        buildable = true;
      };
      tests = {
        "ShowDefaultTZAbbreviations" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "ShowTime" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "ForeignCalls" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "test-main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ] ++ (if compiler.isGhc && compiler.version.lt "9.14"
            then [
              (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ]
            else pkgs.lib.optional (compiler.isGhc && true) (hsPkgs."template-haskell-lift" or (errorHandler.buildDepError "template-haskell-lift")));
          buildable = if system.isJavaScript then false else true;
        };
        "test-template" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ] ++ (if compiler.isGhc && compiler.version.lt "9.14"
            then [
              (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ]
            else pkgs.lib.optional (compiler.isGhc && true) (hsPkgs."template-haskell-lift" or (errorHandler.buildDepError "template-haskell-lift")));
          buildable = if system.isWasm32 then false else true;
        };
        "test-unix" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = if system.isWindows || system.isJavaScript || system.isWasm32
            then false
            else true;
        };
      };
      benchmarks = {
        "time-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ] ++ (if compiler.isGhc && compiler.version.lt "9.14"
            then [
              (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ]
            else pkgs.lib.optional (compiler.isGhc && true) (hsPkgs."template-haskell-lift" or (errorHandler.buildDepError "template-haskell-lift")));
          buildable = true;
        };
      };
    };
  }