{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "lmdb-high-level";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/lmdb-high-level";
      url = "";
      synopsis = "Higher level API for working with LMDB";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.pipes)
          (hsPkgs.lmdb)
          (hsPkgs.transformers)
          (hsPkgs.ghc-prim)
          (hsPkgs.vector)
          (hsPkgs.primitive)
        ];
      };
      tests = {
        "lmbd-high-level-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.lmdb-high-level)
            (hsPkgs.test-framework)
            (hsPkgs.pipes)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.random)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }