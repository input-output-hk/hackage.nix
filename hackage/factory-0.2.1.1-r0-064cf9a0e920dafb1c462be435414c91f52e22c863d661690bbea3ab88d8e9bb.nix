{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      llvm = false;
      threaded = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "factory";
        version = "0.2.1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "(C) 2011-2013 Dr. Alistair Ward";
      maintainer = "factory <at> functionalley <dot> eu";
      author = "Dr. Alistair Ward";
      homepage = "http://functionalley.eu";
      url = "";
      synopsis = "Rational arithmetic in an irrational world.";
      description = "A library of number-theory functions, for; factorials, square-roots, Pi and primes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.containers)
          (hsPkgs.parallel)
          (hsPkgs.primes)
          (hsPkgs.random)
          (hsPkgs.toolshed)
        ];
      };
      exes = {
        "factory" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }