{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "data-interval";
        version = "1.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Interval datatype, interval arithmetic and interval-based containers";
      description = "Interval datatype, interval arithmetic and interval-based containers for Haskell.\nUnlike the intervals package (<http://hackage.haskell.org/package/intervals>),\nthis package provides both open and closed intervals and is intended to be used\nwith exact number types such as Rational and Integer.";
      buildType = "Simple";
    };
    components = {
      "data-interval" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.lattices)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.extended-reals)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups);
      };
      tests = {
        "test-interval" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ChasingBottoms)
            (hsPkgs.containers)
            (hsPkgs.lattices)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.data-interval)
            (hsPkgs.syb)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") (hsPkgs.transformers);
        };
      };
    };
  }