{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "bitvec"; version = "0.1.0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "https://github.com/mokus0/bitvec";
      url = "";
      synopsis = "Unboxed vectors of bits / dense IntSets";
      description = "Another bit-array library for Haskell.  This one defines a `Bit`\ntype (which is an instance of all the \"expected\" classes, including\nnumeric ones) and makes that type an instance of `Data.Vector.Unboxed.\nUnbox`, so we get a lot of nice APIs for free.  `Bool` is already an\nunboxable type, but the current unboxed `Vector` implementation packs\neach bit as a byte.  This one packs 8 bits per byte, as expected\n(`UArray` from the `array` package also uses one bit per `Bool`).\n\nIn addition to the `Vector` interface, there are several high-level\noperations and some low-level ones suitable for building new bulk\noperations by viewing the bit-vector as a word vector.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.primitive) (hsPkgs.vector) ];
        };
      tests = {
        "bitvec-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.primitive)
            (hsPkgs.vector)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }