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
      identifier = { name = "CMCompare"; version = "0.0.1.1"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, Ivo L. Hofacker, 2010";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen, Ivo L. Hofacker";
      homepage = "http://www.tbi.univie.ac.at/software/cmcompare/";
      url = "";
      synopsis = "Infernal covariance model comparison";
      description = "Compares two Infernal covariance models. Returns the common\nMaxiMin score and the offending RNA sequence. High scores point\ntoward low discriminative power of the two models. Based on:\n\"Discriminatory Power or RNA Family Models, Hoener zu\nSiederdissen and Hofacker, 2010, accepted for eccb10\"";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hsCMCompare" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."Biobase" or (errorHandler.buildDepError "Biobase"))
            (hsPkgs."BiobaseInfernal" or (errorHandler.buildDepError "BiobaseInfernal"))
            (hsPkgs."HsTools" or (errorHandler.buildDepError "HsTools"))
            ];
          buildable = true;
          };
        };
      };
    }