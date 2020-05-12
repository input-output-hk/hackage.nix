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
    flags = { llvm = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "toolshed"; version = "0.18.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "(C) 2010-2015 Dr. Alistair Ward";
      maintainer = "mailto:toolshed@functionalley.com";
      author = "Dr. Alistair Ward";
      homepage = "https://functionalley.com";
      url = "";
      synopsis = "Ill-defined library.";
      description = "Ill-defined unrelated utilities used by other packages from <https://functionalley.com>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."toolshed" or (errorHandler.buildDepError "toolshed"))
            ];
          buildable = true;
          };
        };
      };
    }