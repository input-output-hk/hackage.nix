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
      specVersion = "1.4.0";
      identifier = { name = "BiobaseVienna"; version = "0.0.2.1"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2010";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "";
      url = "";
      synopsis = "ViennaRNA parameter library";
      description = "Import and export of ViennaRNA-style parameters for RNA\nsecondary structure prediction.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."tuple" or (errorHandler.buildDepError "tuple"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
          (hsPkgs."ParsecTools" or (errorHandler.buildDepError "ParsecTools"))
          (hsPkgs."HsTools" or (errorHandler.buildDepError "HsTools"))
          (hsPkgs."Biobase" or (errorHandler.buildDepError "Biobase"))
          (hsPkgs."BiobaseTurner" or (errorHandler.buildDepError "BiobaseTurner"))
          (hsPkgs."BiobaseTypes" or (errorHandler.buildDepError "BiobaseTypes"))
          ];
        buildable = true;
        };
      };
    }