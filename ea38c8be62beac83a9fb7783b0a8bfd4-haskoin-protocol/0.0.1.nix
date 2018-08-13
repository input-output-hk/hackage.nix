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
      specVersion = "1.9.2";
      identifier = {
        name = "haskoin-protocol";
        version = "0.0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "plaprade+hackage@gmail.com";
      author = "Philippe Laprade";
      homepage = "http://github.com/plaprade/haskoin-protocol";
      url = "";
      synopsis = "Implementation of the Bitcoin network protocol messages";
      description = "This package provides all of the basic types used for the Bitcoin\nnetworking protocol together with Data.Binary instances for efficiently\nserializing and de-serializing them.";
      buildType = "Simple";
    };
    components = {
      "haskoin-protocol" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.haskoin-util)
          (hsPkgs.haskoin-crypto)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "test-haskoin-protocol" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.haskoin-util)
            (hsPkgs.haskoin-crypto)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }