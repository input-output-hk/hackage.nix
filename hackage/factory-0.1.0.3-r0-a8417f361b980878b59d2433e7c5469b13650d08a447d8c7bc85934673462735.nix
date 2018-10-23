{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      llvm = false;
      threaded = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "factory";
        version = "0.1.0.3";
      };
      license = "LicenseRef-GPL";
      copyright = "(C) 2011 Dr. Alistair Ward";
      maintainer = "factory <at> functionalley <dot> eu";
      author = "Dr. Alistair Ward";
      homepage = "http://functionalley.eu";
      url = "";
      synopsis = "Rational arithmetic in an irrational world.";
      description = "A library of number-theory functions, for; factorials, square-roots, Pi, primality-testing, prime-factorisation ...";
      buildType = "Simple";
    };
    components = {
      "factory" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.containers)
          (hsPkgs.primes)
          (hsPkgs.random)
          (hsPkgs.toolshed)
        ] ++ [ (hsPkgs.parallel) ];
      };
      exes = {
        "factory" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.haskell98)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }