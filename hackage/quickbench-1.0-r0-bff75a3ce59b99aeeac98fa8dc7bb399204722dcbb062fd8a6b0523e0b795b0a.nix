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
      specVersion = "1.10";
      identifier = { name = "quickbench"; version = "1.0"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright: (c) 2008-2016 Simon Michael";
      maintainer = "simon@joyful.com";
      author = "Simon Michael";
      homepage = "https://github.com/simonmichael/quickbench#readme";
      url = "";
      synopsis = "quick & easy benchmarking of command-line programs";
      description = "quickbench produces very simple output (elapsed seconds),\nas quickly as possible (running commands just once by default),\nand tabulates results from multiple executables.\nI find it very useful for quick and dirty, exploratory, and comparative measurements\nthat you can understand at a glance.\nPlease see the readme for more.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."docopt" or (errorHandler.buildDepError "docopt"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."tabular" or (errorHandler.buildDepError "tabular"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "quickbench" = {
          depends = [
            (hsPkgs."quickbench" or (errorHandler.buildDepError "quickbench"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      tests = {
        "quickbench-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quickbench" or (errorHandler.buildDepError "quickbench"))
            ];
          buildable = true;
          };
        };
      };
    }