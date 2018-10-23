{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "vec";
        version = "0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Oleg Grenrus";
      maintainer = "Oleg.Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/vec";
      url = "";
      synopsis = "Nat, Fin and Vec types.";
      description = "This package provides length indexed lists, i.e. 'Vec'.\n\n@\ndata Vec n a where\nVNil  :: Vec 'Nat.Z a\n(:::) :: a -> Vec n a -> Vec ('Nat.S n) a\n@\n\nThe functions are implemented in three flavours:\n\n* __naive__: with explicit recursion. It's simple, constraint-less, yet slow.\n\n* __pull__: using @Fin n -> a@ representation, which fuses well,\nbut makes some programs hard to write. And\n\n* __inline__: which exploits how GHC dictionary inlining works, unrolling\nrecursion if the size of 'Vec' is known statically.\n\nAs best approach depends on the application, @vec@ doesn't do any magic\ntransformation. Benchmark your code.\n\nDifferences to other packages:\n\n* [linear](http://hackage.haskell.org/package/linear) has 'V' type,\nwhich uses 'Vector' from @vector@ package as backing store.\n`Vec` is a real GADT, but tries to provide as many useful instances (upto @lens@).\n\n* [sized-vector](http://hackage.haskell.org/package/sized-vector) depends\non @singletons@ package. `vec` isn't light on dependencies either,\nbut try to provide wide GHC support.\n\n* [sized](https://hackage.haskell.org/package/sized) also depends\non a @singletons@ package. The @Sized f n a@ type is generalisation of\n@linear@'s @V@ for any @ListLike@.\n\n* [clash-prelude](https://hackage.haskell.org/package/clash-prelude)\nis a kitchen sink package, which has @CLaSH.Sized.Vector@ module.\nAlso depends on @singletons@.";
      buildType = "Simple";
    };
    components = {
      "vec" = {
        depends  = [
          (hsPkgs.adjunctions)
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.boring)
          (hsPkgs.deepseq)
          (hsPkgs.distributive)
          (hsPkgs.fin)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.semigroupoids)
          (hsPkgs.semigroups)
        ];
      };
      tests = {
        "inspection" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fin)
            (hsPkgs.vec)
            (hsPkgs.tagged)
            (hsPkgs.inspection-testing)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fin)
            (hsPkgs.vec)
            (hsPkgs.vector)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }