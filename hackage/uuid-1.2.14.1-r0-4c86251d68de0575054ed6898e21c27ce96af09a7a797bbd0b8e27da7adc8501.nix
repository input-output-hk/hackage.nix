{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = {
        name = "uuid";
        version = "1.2.14.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2013 Antoine Latter";
      maintainer = "hvr@gnu.org";
      author = "Antoine Latter";
      homepage = "https://github.com/hvr/uuid";
      url = "";
      synopsis = "For creating, comparing, parsing and printing Universally Unique Identifiers";
      description = "This library is useful for creating, comparing, parsing and\nprinting Universally Unique Identifiers.\n\nSee <http://en.wikipedia.org/wiki/UUID> for the general idea.";
      buildType = "Simple";
    };
    components = {
      "uuid" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cryptohash-md5)
          (hsPkgs.cryptohash-sha1)
          (hsPkgs.maccatcher)
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
      };
    };
  }