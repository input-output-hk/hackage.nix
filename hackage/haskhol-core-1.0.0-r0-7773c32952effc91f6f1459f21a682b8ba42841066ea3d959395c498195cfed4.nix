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
      specVersion = "1.6";
      identifier = { name = "haskhol-core"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Evan Austin <ecaustin@ittc.ku.edu>";
      author = "Evan Austin <ecaustin@ittc.ku.edu>";
      homepage = "haskhol.org";
      url = "";
      synopsis = "The core logical system of HaskHOL, an EDSL for HOL theorem\nproving.";
      description = "More details can be found at the following page:\n<haskhol.org>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
        buildable = true;
        };
      };
    }