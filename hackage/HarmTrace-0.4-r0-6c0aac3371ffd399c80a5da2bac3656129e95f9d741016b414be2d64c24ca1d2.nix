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
      identifier = { name = "HarmTrace"; version = "0.4"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2010--2011 Universiteit Utrecht";
      maintainer = "bash@cs.uu.nl, jpm@cs.uu.nl";
      author = "W. Bas de Haas and José Pedro Magalhães";
      homepage = "";
      url = "";
      synopsis = "HarmTrace: Harmony Analysis and Retrieval of Music";
      description = "HarmTrace: Harmony Analysis and Retrieval of Music\nwith Type-level Representations of Abstract\nChords Entities\n\nThis is the first public release of HarmTrace, a system\nfor automatically analysing the harmony of music\nsequences. HarmTrace is described in the paper:\n\n* José Pedro Magalhães and W. Bas de Haas.\n/Experience Report: Functional Modelling of Musical Harmony./\nInternational Conference on Functional Programming,\n2011.\n<http://dreixel.net/research/pdf/fmmh.pdf>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "harmtrace" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."parseargs" or (errorHandler.buildDepError "parseargs"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."uu-parsinglib" or (errorHandler.buildDepError "uu-parsinglib"))
            (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            ];
          buildable = true;
          };
        };
      };
    }