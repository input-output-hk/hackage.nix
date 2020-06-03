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
      specVersion = "2.4";
      identifier = { name = "shannon-fano"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "2020 Armando Santos";
      maintainer = "Armando Santos <armandoifsantos@gmail.com>";
      author = "Armando Santos";
      homepage = "https://github.com/bolt12/shannon-fano";
      url = "";
      synopsis = "Shannon-fano compression algorithm in Haskell";
      description = "Shannon-fano compression algorithm in Haskell program and API";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
          ];
        buildable = true;
        };
      exes = {
        "shannon-fano" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."shannon-fano" or (errorHandler.buildDepError "shannon-fano"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."shannon-fano" or (errorHandler.buildDepError "shannon-fano"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }