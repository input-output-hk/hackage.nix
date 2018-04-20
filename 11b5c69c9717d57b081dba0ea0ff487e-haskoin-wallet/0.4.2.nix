{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      library-only = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "haskoin-wallet";
          version = "0.4.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "xenog@protonmail.com";
        author = "Philippe Laprade, Jean-Pierre Rupp";
        homepage = "http://github.com/haskoin/haskoin";
        url = "";
        synopsis = "Implementation of a Bitcoin SPV Wallet with BIP32 and multisig support.";
        description = "This package provides a SPV (simple payment verification) wallet\nimplementation. It features BIP32 key management, deterministic signatures\n(RFC-6979) and first order support for multi-signature transactions. You\ncan communicate with the wallet process through a ZeroMQ API or through a\ncommand-line tool called \"hw\" which is also provided in this package.";
        buildType = "Simple";
      };
      components = {
        haskoin-wallet = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.conduit
            hsPkgs.deepseq
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.daemons
            hsPkgs.exceptions
            hsPkgs.esqueleto
            hsPkgs.file-embed
            hsPkgs.filepath
            hsPkgs.haskeline
            hsPkgs.haskoin-core
            hsPkgs.haskoin-node
            hsPkgs.lifted-async
            hsPkgs.lifted-base
            hsPkgs.monad-logger
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.persistent
            hsPkgs.persistent-template
            hsPkgs.persistent-sqlite
            hsPkgs.resourcet
            hsPkgs.semigroups
            hsPkgs.split
            hsPkgs.stm
            hsPkgs.stm-chans
            hsPkgs.stm-conduit
            hsPkgs.string-conversions
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers-base
            hsPkgs.unix
            hsPkgs.unordered-containers
            hsPkgs.yaml
            hsPkgs.zeromq4-haskell
          ];
        };
        exes = {
          hw = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskoin-wallet
            ];
          };
          example-inproc-wallet-server = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.haskoin-node
              hsPkgs.haskoin-wallet
              hsPkgs.monad-logger
              hsPkgs.persistent-sqlite
              hsPkgs.resourcet
              hsPkgs.unordered-containers
              hsPkgs.string-conversions
              hsPkgs.zeromq4-haskell
            ];
          };
        };
        tests = {
          test-haskoin-wallet = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.haskoin-core
              hsPkgs.haskoin-node
              hsPkgs.haskoin-wallet
              hsPkgs.monad-logger
              hsPkgs.mtl
              hsPkgs.persistent
              hsPkgs.persistent-sqlite
              hsPkgs.resourcet
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.stm
              hsPkgs.stm-chans
              hsPkgs.string-conversions
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }