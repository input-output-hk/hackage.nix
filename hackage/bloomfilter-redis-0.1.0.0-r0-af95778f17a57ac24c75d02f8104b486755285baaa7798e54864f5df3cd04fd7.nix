{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = {
        name = "bloomfilter-redis";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2016 Tobias Markus <tobias AT miglix DOT eu>";
      maintainer = "Tobias Markus <tobias AT miglix DOT eu>";
      author = "Tobias Markus <tobias AT miglix DOT eu>";
      homepage = "";
      url = "";
      synopsis = "Distributed bloom filters on Redis (using the Hedis client).";
      description = "Distributed bloom filters on Redis (using the Hedis client).\n\nThe hash family algorithm is partly inspired by\nBrian O\\'Sullivan\\'s bloomfilter package at <https://hackage.haskell.org/package/bloomfilter>.";
      buildType = "Simple";
    };
    components = {
      "bloomfilter-redis" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.hashable)
          (hsPkgs.hedis)
          (hsPkgs.arithmoi)
        ];
      };
      tests = {
        "test-bloomfilter-redis" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bloomfilter-redis)
            (hsPkgs.bytestring)
            (hsPkgs.hashable)
            (hsPkgs.hedis)
            (hsPkgs.tasty)
            (hsPkgs.tasty-rerun)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
      benchmarks = {
        "bench-bloomfilter-redis" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bloomfilter-redis)
            (hsPkgs.random)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }