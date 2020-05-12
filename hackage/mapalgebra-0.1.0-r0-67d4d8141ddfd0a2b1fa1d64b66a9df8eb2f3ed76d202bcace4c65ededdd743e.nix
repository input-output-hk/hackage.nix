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
      identifier = { name = "mapalgebra"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Colin Woodbury";
      maintainer = "colin@fosskers.ca";
      author = "Colin Woodbury";
      homepage = "https://github.com/fosskers/mapalgebra";
      url = "";
      synopsis = "Efficient, polymorphic Map Algebra.";
      description = "Efficient, polymorphic Map Algebra.\n\nThis library is an implementation of /Map Algebra/ as described in the book /GIS and Cartographic Modeling/ by Dana Tomlin. The fundamental type, the `Raster`, is typesafe. Rasters of different size and projection are considered different types, and so cannot be combined in any way.\n\nAlso featured are op fusion (i.e. \"lazy Rasters\"), extremely fast Focal Operations, and typesafe NoData handling. Please see the main module for a more detailed introduction.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
          (hsPkgs."massiv-io" or (errorHandler.buildDepError "massiv-io"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "mapalgebra-test" = {
          depends = [
            (hsPkgs."HUnit-approx" or (errorHandler.buildDepError "HUnit-approx"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mapalgebra" or (errorHandler.buildDepError "mapalgebra"))
            (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
            (hsPkgs."massiv-io" or (errorHandler.buildDepError "massiv-io"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "mapalgebra-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."mapalgebra" or (errorHandler.buildDepError "mapalgebra"))
            (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
            (hsPkgs."massiv-io" or (errorHandler.buildDepError "massiv-io"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }