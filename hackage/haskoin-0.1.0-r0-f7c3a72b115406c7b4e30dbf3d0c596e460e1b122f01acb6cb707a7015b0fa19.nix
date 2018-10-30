{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { testnet = false; };
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "haskoin";
        version = "0.1.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "plaprade+hackage@gmail.com";
      author = "Philippe Laprade, Jean-Pierre Rupp";
      homepage = "http://github.com/haskoin/haskoin";
      url = "";
      synopsis = "Implementation of the Bitcoin protocol.";
      description = "Haskoin is a package providing an implementation of the Bitcoin protocol\nspecifications. It provides the cryptographic ECDSA and hashing primitives,\nfunctions for handling BIP32 extended keys, functions for building and\nsigning various types of regular and multisig transactions and a definition\nof the network protocol messages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.byteable)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptohash)
          (hsPkgs.deepseq)
          (hsPkgs.either)
          (hsPkgs.json-rpc)
          (hsPkgs.mtl)
          (hsPkgs.pbkdf)
          (hsPkgs.split)
          (hsPkgs.text)
        ];
      };
      tests = {
        "test-haskoin" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.byteable)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.cryptohash)
            (hsPkgs.deepseq)
            (hsPkgs.either)
            (hsPkgs.json-rpc)
            (hsPkgs.mtl)
            (hsPkgs.pbkdf)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }