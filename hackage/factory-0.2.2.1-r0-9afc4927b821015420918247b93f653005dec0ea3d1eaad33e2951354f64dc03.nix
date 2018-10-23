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
      specVersion = "1.10";
      identifier = {
        name = "factory";
        version = "0.2.2.1";
      };
      license = "LicenseRef-GPL";
      copyright = "(C) 2011-2015 Dr. Alistair Ward";
      maintainer = "mailto:factory@functionalley.eu";
      author = "Dr. Alistair Ward";
      homepage = "http://functionalley.eu/Factory/factory.html";
      url = "";
      synopsis = "Rational arithmetic in an irrational world.";
      description = "A library of number-theory functions, for; factorials, square-roots, Pi and primes.";
      buildType = "Simple";
    };
    components = {
      "factory" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.data-default)
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
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.deepseq)
            (hsPkgs.factory)
            (hsPkgs.random)
            (hsPkgs.toolshed)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.deepseq)
            (hsPkgs.factory)
            (hsPkgs.primes)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.toolshed)
          ];
        };
      };
    };
  }