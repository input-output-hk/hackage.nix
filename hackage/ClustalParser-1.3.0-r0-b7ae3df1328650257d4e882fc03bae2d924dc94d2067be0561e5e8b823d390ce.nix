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
      identifier = { name = "ClustalParser"; version = "1.3.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "egg@informatik.uni-freiburg.de";
      author = "Florian Eggenhofer";
      homepage = "";
      url = "";
      synopsis = "Libary for parsing Clustal tools output";
      description = "Currently contains parsers and datatypes for: clustalw2, clustalo, mlocarna, cmalign\n\nClustal tools are multiple sequence alignment tools for biological sequence like DNA, RNA and Protein.\nFor more information on clustal Tools refer to <http://www.clustal.org/>.\n\nMlocarna is a multiple sequence alignment tool for RNA sequences with secondary structure output.\nFor more information on mlocarna refer to <http://www.bioinf.uni-freiburg.de/Software/LocARNA/>.\n\nCmalign is a multiple sequence alignment program based on RNA family models and produces\n,among others, clustal output. It is part of infernal <http://infernal.janelia.org/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "ClustalParserTest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."ClustalParser" or (errorHandler.buildDepError "ClustalParser"))
            (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."ClustalParser" or (errorHandler.buildDepError "ClustalParser"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            ];
          buildable = true;
          };
        };
      };
    }