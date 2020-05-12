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
      specVersion = "2.2";
      identifier = { name = "chronos-bench"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019, Florian Knupfer";
      maintainer = "fknupfer@gmail.com";
      author = "Florian Knupfer";
      homepage = "https://github.com/knupfer/chronos";
      url = "";
      synopsis = "Benchmarking tool with focus on comparing results.";
      description = "This tool performs lazy benchmarking of functions and shell commands with continuous feedback and improving precision.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."chronos" or (errorHandler.buildDepError "chronos"))
          ];
        buildable = true;
        };
      exes = {
        "chronos" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."chronos-bench" or (errorHandler.buildDepError "chronos-bench"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."chronos-bench" or (errorHandler.buildDepError "chronos-bench"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }