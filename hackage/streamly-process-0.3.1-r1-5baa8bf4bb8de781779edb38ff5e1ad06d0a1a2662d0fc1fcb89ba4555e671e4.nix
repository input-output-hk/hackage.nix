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
    flags = { fusion-plugin = false; use-native = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "streamly-process"; version = "0.3.1"; };
      license = "Apache-2.0";
      copyright = "Composewell Technologies";
      maintainer = "streamly@composewell.com";
      author = "Composewell Technologies";
      homepage = "https://streamly.composewell.com";
      url = "";
      synopsis = "Use OS processes as stream transformation functions";
      description = "Use operating system (OS) commands in Haskell programs as if they were\nnative Haskell functions, by treating their inputs and outputs as\nHaskell streams. This allows you to write high-level Haskell scripts\nthat can perform tasks similar to shell scripts, but with C-like\nperformance, and with strong safety guarantees, refactorability, and\nmodularity.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
          (hsPkgs."streamly-core" or (errorHandler.buildDepError "streamly-core"))
        ] ++ (if !flags.use-native
          then [ (hsPkgs."process" or (errorHandler.buildDepError "process")) ]
          else pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix")));
        buildable = true;
      };
      tests = {
        "Test.System.Process" = {
          depends = [
            (hsPkgs."streamly-process" or (errorHandler.buildDepError "streamly-process"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."streamly-core" or (errorHandler.buildDepError "streamly-core"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "Benchmark.System.Process" = {
          depends = [
            (hsPkgs."streamly-process" or (errorHandler.buildDepError "streamly-process"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."streamly-core" or (errorHandler.buildDepError "streamly-core"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ] ++ pkgs.lib.optional (flags.fusion-plugin && !(compiler.isGhc && compiler.version.lt "8.6")) (hsPkgs."fusion-plugin" or (errorHandler.buildDepError "fusion-plugin"));
          buildable = true;
        };
      };
    };
  }