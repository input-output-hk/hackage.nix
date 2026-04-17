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
      identifier = { name = "streamly-process"; version = "0.4.1"; };
      license = "Apache-2.0";
      copyright = "Composewell Technologies";
      maintainer = "streamly@composewell.com";
      author = "Composewell Technologies";
      homepage = "https://streamly.composewell.com";
      url = "";
      synopsis = "Write shell-like command pipelines in Haskell";
      description = "Treat operating system (OS) processes as first-class stream\ntransformations in Haskell. This package lets you compose external\ncommands as if they were native Haskell functions, connecting\ntheir inputs and outputs through typed streams and perform tasks\nconcurrently. It let's you do your scripting tasks in Haskell with\nnear-native performance.\n\nThe API is designed to be concise and ergonomic, making it easy\nto express complex pipelines with minimal boilerplate. You can\nbuild high-level, declarative workflows similar to shell scripts\nwhile retaining Haskell’s strengths: type safety, composability,\nrefactorability, and modular design. Moreover, you get the concurrent\ncompositions and C-like performance of streamly.";
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