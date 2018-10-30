{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      unsafe-tricks = true;
      bounds-checking = false;
      debug = false;
      sse42 = false;
      portable = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "impure-containers";
        version = "0.5.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2016 Andrew Martin\n, Copyright 2018 Remy Goldschmidt";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/impure-containers";
      url = "";
      synopsis = "Mutable containers in Haskell.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hashable)
          (hsPkgs.primitive)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.ghc-prim)
        ] ++ pkgs.lib.optional (!flags.portable && flags.unsafe-tricks && (compiler.isGhc && true)) (hsPkgs.ghc-prim);
      };
      tests = {
        "impure-containers-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.impure-containers)
            (hsPkgs.containers)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.vector)
            (hsPkgs.transformers)
          ];
        };
      };
      benchmarks = {
        "impure-containers-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.impure-containers)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }