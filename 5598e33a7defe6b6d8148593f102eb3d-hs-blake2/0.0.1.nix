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
        name = "hs-blake2";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tsuraan@gmail.com";
      author = "jay groven";
      homepage = "";
      url = "";
      synopsis = "A cryptohash-inspired library for blake2";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hs-blake2" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
        libs = [ (pkgs."b2") ];
      };
      tests = {
        "test-all" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-arbitrary)
            (hsPkgs.hs-blake2)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
          libs = [ (pkgs."b2") ];
        };
      };
      benchmarks = {
        "benchmark-all" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cryptohash)
            (hsPkgs.criterion)
            (hsPkgs.hs-blake2)
          ];
          libs = [ (pkgs."b2") ];
        };
      };
    };
  }