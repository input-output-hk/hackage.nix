{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "haskoin-core";
          version = "0.4.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "xenog@protonmail.com";
        author = "Philippe Laprade, Jean-Pierre Rupp";
        homepage = "http://github.com/haskoin/haskoin";
        url = "";
        synopsis = "Implementation of the core Bitcoin protocol features.";
        description = "Haskoin is a package implementing the core functionalities of the Bitcoin\nprotocol specifications. The following features are provided:\n\n* Hashing functions (sha-256, ripemd-160)\n* Base58 encoding\n* BIP32 extended key derivation and parsing (m/1'/2/3)\n* BIP39 mnemonic keys\n* ECDSA cryptographic primitives (using the C library libsecp256k1)\n* Script parsing and evaluation\n* Building and signing of standard transactions (regular, multisig, p2sh)\n* Parsing and manipulation of all Bitcoin protocol types\n* Bloom filters and partial merkle tree library (used in SPV wallets)\n* Comprehensive test suite\n\nA wallet implementation is available in haskoin-wallet which uses both this\npackage and the node implementation in haskoin-node.";
        buildType = "Simple";
      };
      components = {
        "haskoin-core" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.byteable
            hsPkgs.bytestring
            hsPkgs.base16-bytestring
            hsPkgs.cereal
            hsPkgs.conduit
            hsPkgs.containers
            hsPkgs.cryptohash
            hsPkgs.deepseq
            hsPkgs.either
            hsPkgs.mtl
            hsPkgs.murmur3
            hsPkgs.network
            hsPkgs.pbkdf
            hsPkgs.QuickCheck
            hsPkgs.split
            hsPkgs.text
            hsPkgs.time
            hsPkgs.string-conversions
            hsPkgs.vector
            hsPkgs.secp256k1
            hsPkgs.largeword
            hsPkgs.entropy
          ];
        };
        tests = {
          "test-haskoin-core" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.containers
              hsPkgs.haskoin-core
              hsPkgs.mtl
              hsPkgs.split
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.string-conversions
              hsPkgs.largeword
              hsPkgs.secp256k1
              hsPkgs.safe
              hsPkgs.vector
              hsPkgs.scientific
            ];
          };
        };
      };
    }