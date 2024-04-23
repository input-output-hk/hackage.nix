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
      specVersion = "2.2";
      identifier = { name = "mapalgebra"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 - 2020 Colin Woodbury";
      maintainer = "colin@fosskers.ca";
      author = "Colin Woodbury";
      homepage = "https://github.com/fosskers/mapalgebra";
      url = "";
      synopsis = "Efficient, polymorphic Map Algebra.";
      description = "Efficient, polymorphic Map Algebra.\n\nThis library is an implementation of /Map Algebra/ as described in the book\n/GIS and Cartographic Modeling/ by Dana Tomlin. The fundamental type, the\n`Raster`, is typesafe. Rasters of different size and projection are considered\ndifferent types, and so cannot be combined mistakenly in any way.\n\nAlso featured are op fusion (i.e. \"lazy Rasters\"), extremely fast Focal\nOperations, and typesafe NoData handling. Please see the main module for a\nmore detailed introduction.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."massiv-io" or (errorHandler.buildDepError "massiv-io"))
        ];
        buildable = true;
      };
      tests = {
        "mapalgebra-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HUnit-approx" or (errorHandler.buildDepError "HUnit-approx"))
            (hsPkgs."mapalgebra" or (errorHandler.buildDepError "mapalgebra"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "mapalgebra-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."mapalgebra" or (errorHandler.buildDepError "mapalgebra"))
            (hsPkgs."massiv-io" or (errorHandler.buildDepError "massiv-io"))
          ];
          buildable = true;
        };
      };
    };
  }