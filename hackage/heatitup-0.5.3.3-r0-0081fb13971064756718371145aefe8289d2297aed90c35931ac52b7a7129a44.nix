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
      identifier = { name = "heatitup"; version = "0.5.3.3"; };
      license = "GPL-3.0-only";
      copyright = "2018 Gregory W. Schwartz";
      maintainer = "gsch@pennmedicine.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/heatitup#readme";
      url = "";
      synopsis = "Find and annotate ITDs.";
      description = "Find and annotate ITDs using suffix trees and characterize the exogenous segments within the spacer using heat diffusion.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-show" or (errorHandler.buildDepError "bytestring-show"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."edit-distance" or (errorHandler.buildDepError "edit-distance"))
          (hsPkgs."fasta" or (errorHandler.buildDepError "fasta"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
          (hsPkgs."pipes-csv" or (errorHandler.buildDepError "pipes-csv"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."string-similarity" or (errorHandler.buildDepError "string-similarity"))
          (hsPkgs."stringsearch" or (errorHandler.buildDepError "stringsearch"))
          (hsPkgs."suffixtree" or (errorHandler.buildDepError "suffixtree"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "heatitup" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."heatitup" or (errorHandler.buildDepError "heatitup"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."diagrams-core" or (errorHandler.buildDepError "diagrams-core"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-pgf" or (errorHandler.buildDepError "diagrams-pgf"))
            (hsPkgs."diagrams-svg" or (errorHandler.buildDepError "diagrams-svg"))
            (hsPkgs."diagrams-html5" or (errorHandler.buildDepError "diagrams-html5"))
            (hsPkgs."diagrams-rasterific" or (errorHandler.buildDepError "diagrams-rasterific"))
            (hsPkgs."fasta" or (errorHandler.buildDepError "fasta"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
            (hsPkgs."pipes-csv" or (errorHandler.buildDepError "pipes-csv"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }