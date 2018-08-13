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
      specVersion = "1.8.0.2";
      identifier = {
        name = "arithmetic";
        version = "1.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "Natural number arithmetic";
      description = "This package implements a library of natural number arithmetic functions,\nincluding Montgomery multiplication, the Miller-Rabin primality test,\nLucas sequences, the Williams p+1 factorization method, continued fraction\nrepresentations of natural number square roots, the Jacobi symbol and the\nTonelli-Shanks algorithm for finding square roots modulo a prime.";
      buildType = "Simple";
    };
    components = {
      "arithmetic" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.QuickCheck)
          (hsPkgs.containers)
          (hsPkgs.opentheory-primitive)
          (hsPkgs.opentheory)
          (hsPkgs.opentheory-bits)
          (hsPkgs.opentheory-divides)
        ];
      };
      exes = {
        "arithmetic" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.QuickCheck)
            (hsPkgs.containers)
            (hsPkgs.opentheory-primitive)
            (hsPkgs.opentheory)
            (hsPkgs.opentheory-bits)
            (hsPkgs.opentheory-divides)
          ];
        };
      };
      tests = {
        "arithmetic-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.QuickCheck)
            (hsPkgs.containers)
            (hsPkgs.opentheory-primitive)
            (hsPkgs.opentheory)
            (hsPkgs.opentheory-bits)
            (hsPkgs.opentheory-divides)
            (hsPkgs.opentheory-prime)
          ];
        };
      };
    };
  }