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
      identifier = { name = "BiobaseFR3D"; version = "0.1.3.0"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2011";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "Importer for FR3D resources";
      description = "Provides importers for FR3D resource files. Of particular\ninterest are basepairs files which describe canonical and\nnon-canonical (non-Watson-Crick) base pairings in RNA secondary\nstructure.\n\nThe original FR3D paper is:\n\nFR3D: Finding Local and Composite Recurrent Structural Motifs\nin RNA 3D Structures, Michael Sarver; Craig L. Zirbel; Jesse\nStombaugh; Ali Mokdad; Neocles B. Leontis. /Journal of\nMathematical Biology/ (2008) 56:215–252.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
          (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
          (hsPkgs."BiobaseXNA" or (errorHandler.buildDepError "BiobaseXNA"))
        ];
        buildable = true;
      };
    };
  }