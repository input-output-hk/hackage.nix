{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sparse-tensor"; version = "0.2"; };
      license = "MIT";
      copyright = "2019 Tobias Reinhart and Nils Alex";
      maintainer = "tobi.reinhart@fau.de, nils.alex@fau.de";
      author = "Tobias Reinhart and Nils Alex";
      homepage = "https://github.com/TobiReinhart/sparse-tensor#readme";
      url = "";
      synopsis = "typesafe tensor algebra library";
      description = "\nThis package is intended to be used as a general purpose tensor algebra library.\nIt defines the usual tensor algebra functions such as addition, scalar multiplication, tensor product, and contractions,\nbut also general symmetrizations and further utility functions.\n\nThe implemented tensor data type is capable of being used with an arbitrary number of general abstract indices and can incorporate values\nof any type that allow for a meaningful addition, scaling, and multiplication. The package is thus very flexible and can easily be customised\nat wish.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.tf-random)
          (hsPkgs.ghc-typelits-natnormalise)
          (hsPkgs.ghc-typelits-knownnat)
          (hsPkgs.parallel)
          (hsPkgs.deepseq)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.zlib)
          (hsPkgs.ad)
          (hsPkgs.hmatrix)
          ];
        };
      tests = {
        "test-sparse-tensor" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hmatrix)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.sparse-tensor)
            ];
          };
        };
      };
    }