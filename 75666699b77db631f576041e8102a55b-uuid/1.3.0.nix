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
      specVersion = "1.8";
      identifier = {
        name = "uuid";
        version = "1.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2013 Antoine Latter";
      maintainer = "aslatter@gmail.com";
      author = "Antoine Latter";
      homepage = "http://projects.haskell.org/uuid/";
      url = "";
      synopsis = "For creating, comparing, parsing and printing Universally Unique Identifiers";
      description = "This library is useful for creating, comparing, parsing and\nprinting Universally Unique Identifiers.\nSee <http://en.wikipedia.org/wiki/UUID> for the general idea.";
      buildType = "Simple";
    };
    components = {
      "uuid" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cryptohash)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.network-info)
          (hsPkgs.random)
          (hsPkgs.time)
        ];
      };
      tests = {
        "testuuid" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.uuid)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
      benchmarks = {
        "benchmark" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.uuid)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.mersenne-random-pure64)
            (hsPkgs.random)
          ];
        };
        "benchbytestring" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.uuid)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.random)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }