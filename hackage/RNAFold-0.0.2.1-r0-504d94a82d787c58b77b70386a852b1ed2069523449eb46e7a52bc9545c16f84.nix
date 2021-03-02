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
      specVersion = "1.4";
      identifier = { name = "RNAFold"; version = "0.0.2.1"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2010";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen (Haskell), Ivo L. Hofacker et al (ViennaRNA)";
      homepage = "";
      url = "";
      synopsis = "RNA secondary structure prediction";
      description = "Provides the folding functions as used in the ViennaRNA\npackage. Here, they are in Haskell form to be used by Haskell\nprograms.\n\n- This is a release aimed at testing Data.Vector\n- Expect major performance issues with GHC < 6.13!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."Biobase" or (errorHandler.buildDepError "Biobase"))
          (hsPkgs."BiobaseTurner" or (errorHandler.buildDepError "BiobaseTurner"))
          (hsPkgs."BiobaseVienna" or (errorHandler.buildDepError "BiobaseVienna"))
          (hsPkgs."BiobaseTypes" or (errorHandler.buildDepError "BiobaseTypes"))
          (hsPkgs."HsTools" or (errorHandler.buildDepError "HsTools"))
          (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
          ];
        buildable = true;
        };
      };
    }