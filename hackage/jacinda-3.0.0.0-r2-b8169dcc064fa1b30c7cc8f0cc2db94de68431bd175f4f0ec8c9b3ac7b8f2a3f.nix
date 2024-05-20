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
    flags = { cross = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "jacinda"; version = "3.0.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Functional, expression-oriented data processing language";
      description = "APL meets AWK. A command-line tool for summarizing and reporting, powered by Rust's [regex](https://docs.rs/regex/regex/) library.";
      buildType = "Simple";
    };
    components = {
      sublibs = {
        "jacinda-lib" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."regex-rure" or (errorHandler.buildDepError "regex-rure"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."microlens-mtl" or (errorHandler.buildDepError "microlens-mtl"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."recursion" or (errorHandler.buildDepError "recursion"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          build-tools = pkgs.lib.optionals (!flags.cross) [
            (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
            (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
          ];
          buildable = true;
        };
      };
      exes = {
        "ja" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."jacinda".components.sublibs.jacinda-lib or (errorHandler.buildDepError "jacinda:jacinda-lib"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "jacinda-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."jacinda".components.sublibs.jacinda-lib or (errorHandler.buildDepError "jacinda:jacinda-lib"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "jacinda-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."jacinda".components.sublibs.jacinda-lib or (errorHandler.buildDepError "jacinda:jacinda-lib"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
          ];
          buildable = true;
        };
      };
    };
  }