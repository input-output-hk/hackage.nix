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
      specVersion = "1.8";
      identifier = {
        name = "bitcoin-rpc";
        version = "0.5.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 - 2014 Jan Vornberger";
      maintainer = "Jan Vornberger <jan@uos.de>";
      author = "Jan Vornberger <jan@uos.de>";
      homepage = "";
      url = "";
      synopsis = "Library to communicate with the Satoshi Bitcoin daemon";
      description = "See Network.BitcoinRPC for documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.unix)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.network)
          (hsPkgs.HTTP)
          (hsPkgs.mtl)
          (hsPkgs.cereal)
          (hsPkgs.watchdog)
        ];
      };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.unix)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.network)
            (hsPkgs.HTTP)
            (hsPkgs.mtl)
            (hsPkgs.cereal)
            (hsPkgs.watchdog)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }