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
      identifier = { name = "BiobaseTurner"; version = "0.0.2.1"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2010";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "";
      url = "";
      synopsis = "RNA folding data structures.";
      description = "Data structures and parsers for the Turner 2004 set of RNA parameters.\n- http://rna.urmc.rochester.edu/NNDB/index.html";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."FileManip" or (errorHandler.buildDepError "FileManip"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."Biobase" or (errorHandler.buildDepError "Biobase"))
          (hsPkgs."HsTools" or (errorHandler.buildDepError "HsTools"))
          (hsPkgs."ParsecTools" or (errorHandler.buildDepError "ParsecTools"))
          (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
          ];
        buildable = true;
        };
      };
    }