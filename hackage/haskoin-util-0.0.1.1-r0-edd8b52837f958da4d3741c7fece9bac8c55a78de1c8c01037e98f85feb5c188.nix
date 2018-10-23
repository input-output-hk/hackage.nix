{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "haskoin-util";
        version = "0.0.1.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "plaprade+hackage@gmail.com";
      author = "Philippe Laprade";
      homepage = "http://github.com/plaprade/haskoin-util";
      url = "";
      synopsis = "Utility functions for the Network.Haskoin project";
      description = "This package contains utility functions used across the Network.Haskoin\nmodules such as ByteString and Data.Binary helpers. It also defines a Build\nmonad describing computations that can be Complete, Partial or Broken.\nAdditionally, this package defines constants tied to specific Bitcoin\nnetworks such as prodnet and testnet.";
      buildType = "Simple";
    };
    components = {
      "haskoin-util" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.either)
          (hsPkgs.mtl)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "test-haskoin-util" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.either)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }