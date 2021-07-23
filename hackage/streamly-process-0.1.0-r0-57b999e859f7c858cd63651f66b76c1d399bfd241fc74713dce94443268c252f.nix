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
    flags = { fusion-plugin = true; use-gauge = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "streamly-process"; version = "0.1.0"; };
      license = "Apache-2.0";
      copyright = "Composewell Technologies";
      maintainer = "streamly@composewell.com";
      author = "Composewell Technologies";
      homepage = "https://streamly.composewell.com";
      url = "";
      synopsis = "Use OS processes as stream transformation functions";
      description = "Run operating system processes as stream source, sink or transformation\nfunctions. Use them seamlessly in a streaming data pipeline in the same way\nas any other Haskell functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
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
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "Benchmark.System.Process" = {
          depends = ([
            (hsPkgs."streamly-process" or (errorHandler.buildDepError "streamly-process"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            ] ++ (pkgs.lib).optional (flags.fusion-plugin && !(compiler.isGhc && (compiler.version).lt "8.6")) (hsPkgs."fusion-plugin" or (errorHandler.buildDepError "fusion-plugin"))) ++ (if flags.use-gauge
            then [ (hsPkgs."gauge" or (errorHandler.buildDepError "gauge")) ]
            else [
              (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
              ]);
          buildable = true;
          };
        };
      };
    }