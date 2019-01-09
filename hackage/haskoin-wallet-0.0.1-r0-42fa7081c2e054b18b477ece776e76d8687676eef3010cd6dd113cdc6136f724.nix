{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "haskoin-wallet"; version = "0.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "plaprade+hackage@gmail.com";
      author = "Philippe Laprade";
      homepage = "http://github.com/plaprade/haskoin-wallet";
      url = "";
      synopsis = "Implementation of a Bitcoin hierarchical deterministric wallet (BIP32).";
      description = "This package provides functions for generating hierarchical deterministic\nkeys (BIP32). It also provides functions for building and signing both\nsimple transactions and multisignature transactions. This package also\nprovides a command lines application called hw (haskoin wallet). It is a\nlightweight bitcoin wallet featuring BIP32 key management, deterministic\nsignatures (RFC-6979) and first order support for multisignature\ntransactions. A library API for hw is also exposed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.either)
          (hsPkgs.text)
          (hsPkgs.yaml)
          (hsPkgs.time)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.conduit)
          (hsPkgs.persistent)
          (hsPkgs.persistent-template)
          (hsPkgs.persistent-sqlite)
          (hsPkgs.haskoin-util)
          (hsPkgs.haskoin-crypto)
          (hsPkgs.haskoin-protocol)
          (hsPkgs.haskoin-script)
          (hsPkgs.QuickCheck)
          ];
        };
      exes = {
        "hw" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.directory)
            (hsPkgs.either)
            (hsPkgs.text)
            (hsPkgs.yaml)
            (hsPkgs.time)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.conduit)
            (hsPkgs.persistent)
            (hsPkgs.persistent-template)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.haskoin-util)
            (hsPkgs.haskoin-crypto)
            (hsPkgs.haskoin-protocol)
            (hsPkgs.haskoin-script)
            ];
          };
        };
      tests = {
        "test-haskoin-wallet" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.either)
            (hsPkgs.text)
            (hsPkgs.yaml)
            (hsPkgs.time)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.conduit)
            (hsPkgs.persistent)
            (hsPkgs.persistent-template)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.haskoin-util)
            (hsPkgs.haskoin-crypto)
            (hsPkgs.haskoin-protocol)
            (hsPkgs.haskoin-script)
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