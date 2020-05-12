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
      identifier = { name = "unscramble"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "barebonesgraphics@gmail.com";
      author = "Joel Taylor";
      homepage = "";
      url = "";
      synopsis = "Solve Boggle-like word games";
      description = "Solve Boggle-like word games";
      buildType = "Simple";
      };
    components = {
      exes = {
        "unscramble" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hashmap" or (errorHandler.buildDepError "hashmap"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }