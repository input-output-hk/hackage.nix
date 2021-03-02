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
    flags = { debug = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ViennaRNA-extras"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2017";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2017";
      homepage = "https://github.com/choener/ViennaRNA-extras";
      url = "";
      synopsis = "ViennaRNA v2 extensions";
      description = "Extra functionality on top of the ViennaRNA bindings. Please\nnote the special license of the ViennaRNA bindings (while the\n-extras library is BSD3, it is not very useful without the\nbindings)!\n\n\nIf you use this software, please cite:\n\n@\nR. Lorenz, S.H. Bernhart, C. Hoener zu Siederdissen, H. Tafer, C. Flamm, P.F. Stadler and I.L. Hofacker (2011)\nViennaRNA Package 2.0\nAlgorithms for Molecular Biology: 6:26\n@\n\n<http://www.almob.org/content/6/1/26>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          (hsPkgs."streaming-bytestring" or (errorHandler.buildDepError "streaming-bytestring"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."strict-base-types" or (errorHandler.buildDepError "strict-base-types"))
          (hsPkgs."BiobaseTypes" or (errorHandler.buildDepError "BiobaseTypes"))
          (hsPkgs."BiobaseXNA" or (errorHandler.buildDepError "BiobaseXNA"))
          (hsPkgs."ViennaRNA-bindings" or (errorHandler.buildDepError "ViennaRNA-bindings"))
          ];
        buildable = true;
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."ViennaRNA-extras" or (errorHandler.buildDepError "ViennaRNA-extras"))
            ];
          buildable = true;
          };
        };
      };
    }