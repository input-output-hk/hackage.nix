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
        name = "haskoin";
        version = "0.0.2.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "plaprade+hackage@gmail.com";
      author = "Philippe Laprade, Jean-Pierre Rupp";
      homepage = "http://github.com/plaprade/haskoin";
      url = "";
      synopsis = "Implementation of the Bitcoin protocol.";
      description = "Haskoin is a package providing an implementation of the Bitcoin protocol\nspecifications. It provides the cryptographic ECDSA and hashing primitives,\nfunctions for handling BIP32 extended keys, functions for building and\nsigning various types of regular and multisig transactions and a definition\nof the network protocol messages.";
      buildType = "Simple";
    };
    components = {
      "haskoin" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.byteable)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.cryptohash)
          (hsPkgs.either)
          (hsPkgs.mtl)
          (hsPkgs.pbkdf)
          (hsPkgs.scientific)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.text-icu)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "test-haskoin" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.byteable)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.cryptohash)
            (hsPkgs.either)
            (hsPkgs.mtl)
            (hsPkgs.pbkdf)
            (hsPkgs.scientific)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.text-icu)
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