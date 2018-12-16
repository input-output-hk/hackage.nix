{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "mapalgebra";
        version = "0.1.1";
      };
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
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.hmatrix)
          (hsPkgs.massiv)
          (hsPkgs.massiv-io)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "mapalgebra-test" = {
          depends = [
            (hsPkgs.HUnit-approx)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.deepseq)
            (hsPkgs.hmatrix)
            (hsPkgs.mapalgebra)
            (hsPkgs.massiv)
            (hsPkgs.massiv-io)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.vector)
          ];
        };
      };
      benchmarks = {
        "mapalgebra-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.data-default)
            (hsPkgs.deepseq)
            (hsPkgs.hmatrix)
            (hsPkgs.mapalgebra)
            (hsPkgs.massiv)
            (hsPkgs.massiv-io)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }