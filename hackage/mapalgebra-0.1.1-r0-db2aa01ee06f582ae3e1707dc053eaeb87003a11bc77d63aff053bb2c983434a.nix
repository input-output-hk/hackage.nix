{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mapalgebra"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Colin Woodbury";
      maintainer = "colin@fosskers.ca";
      author = "Colin Woodbury";
      homepage = "https://github.com/fosskers/mapalgebra";
      url = "";
      synopsis = "Efficient, polymorphic Map Algebra.";
      description = "Efficient, polymorphic Map Algebra.\n\nThis library is an implementation of /Map Algebra/ as described in the book /GIS and Cartographic Modeling/ by Dana Tomlin. The fundamental type, the `Raster`, is typesafe. Rasters of different size and projection are considered different types, and so cannot be combined mistakenly in any way.\n\nAlso featured are op fusion (i.e. \"lazy Rasters\"), extremely fast Focal Operations, and typesafe NoData handling. Please see the main module for a more detailed introduction.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."massiv" or ((hsPkgs.pkgs-errors).buildDepError "massiv"))
          (hsPkgs."massiv-io" or ((hsPkgs.pkgs-errors).buildDepError "massiv-io"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "mapalgebra-test" = {
          depends = [
            (hsPkgs."HUnit-approx" or ((hsPkgs.pkgs-errors).buildDepError "HUnit-approx"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."mapalgebra" or ((hsPkgs.pkgs-errors).buildDepError "mapalgebra"))
            (hsPkgs."massiv" or ((hsPkgs.pkgs-errors).buildDepError "massiv"))
            (hsPkgs."massiv-io" or ((hsPkgs.pkgs-errors).buildDepError "massiv-io"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "mapalgebra-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."mapalgebra" or ((hsPkgs.pkgs-errors).buildDepError "mapalgebra"))
            (hsPkgs."massiv" or ((hsPkgs.pkgs-errors).buildDepError "massiv"))
            (hsPkgs."massiv-io" or ((hsPkgs.pkgs-errors).buildDepError "massiv-io"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }