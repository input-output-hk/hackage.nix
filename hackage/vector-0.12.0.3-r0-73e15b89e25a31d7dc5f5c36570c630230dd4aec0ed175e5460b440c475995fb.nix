{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      boundschecks = true;
      unsafechecks = false;
      internalchecks = false;
      wall = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "vector"; version = "0.12.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Roman Leshchinskiy 2008-2012";
      maintainer = "Haskell Libraries Team <libraries@haskell.org>";
      author = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      homepage = "https://github.com/haskell/vector";
      url = "";
      synopsis = "Efficient Arrays";
      description = "\nAn efficient implementation of Int-indexed arrays (both mutable\nand immutable), with a powerful loop optimisation framework .\n\nIt is structured as follows:\n\n[\"Data.Vector\"] Boxed vectors of arbitrary types.\n\n[\"Data.Vector.Unboxed\"] Unboxed vectors with an adaptive\nrepresentation based on data type families.\n\n[\"Data.Vector.Storable\"] Unboxed vectors of 'Storable' types.\n\n[\"Data.Vector.Primitive\"] Unboxed vectors of primitive types as\ndefined by the @primitive@ package. \"Data.Vector.Unboxed\" is more\nflexible at no performance cost.\n\n[\"Data.Vector.Generic\"] Generic interface to the vector types.\n\nThere is also a (draft) tutorial on common uses of vector.\n\n* <http://haskell.org/haskellwiki/Numeric_Haskell:_A_Vector_Tutorial>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.ghc-prim)
          (hsPkgs.deepseq)
          ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).gt "8.0")) [
          (hsPkgs.fail)
          (hsPkgs.semigroups)
          ];
        };
      tests = {
        "vector-tests-O0" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.base-orphans)
            (hsPkgs.vector)
            (hsPkgs.random)
            (hsPkgs.primitive)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.transformers)
            ];
          };
        "vector-tests-O2" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.base-orphans)
            (hsPkgs.vector)
            (hsPkgs.random)
            (hsPkgs.primitive)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }