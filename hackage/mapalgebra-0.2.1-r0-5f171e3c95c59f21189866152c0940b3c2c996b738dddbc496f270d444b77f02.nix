{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "mapalgebra"; version = "0.2.1"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."massiv" or ((hsPkgs.pkgs-errors).buildDepError "massiv"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."massiv-io" or ((hsPkgs.pkgs-errors).buildDepError "massiv-io"))
          ];
        buildable = true;
        };
      tests = {
        "mapalgebra-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."massiv" or ((hsPkgs.pkgs-errors).buildDepError "massiv"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."HUnit-approx" or ((hsPkgs.pkgs-errors).buildDepError "HUnit-approx"))
            (hsPkgs."mapalgebra" or ((hsPkgs.pkgs-errors).buildDepError "mapalgebra"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }