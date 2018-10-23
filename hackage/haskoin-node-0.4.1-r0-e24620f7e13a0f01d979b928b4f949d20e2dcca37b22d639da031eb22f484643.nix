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
        name = "haskoin-node";
        version = "0.4.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "xenog@protonmail.com";
      author = "Philippe Laprade, Jean-Pierre Rupp";
      homepage = "http://github.com/haskoin/haskoin";
      url = "";
      synopsis = "Implementation of a Bitoin node.";
      description = "haskoin-node provides an implementation of the Bitcoin network protocol\nthat allows you to synchronize headers (with SPV validation) and download\nmerkle blocks and full blocks. This package can be used to implement\nwallets or other Bitcoin components that require talking to the Bitcoin\nnetwork. It provides the following features:\n\n* Implementation of the Bitcoin network protocol\n* Headertree implementation with SPV verification\n* Headers-first synchronization\n* Merkle block download from peers with bloom filters\n* Full block download from peers\n\nA wallet implementation using this package is available in haskoin-wallet.";
      buildType = "Simple";
    };
    components = {
      "haskoin-node" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.concurrent-extra)
          (hsPkgs.cereal)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.either)
          (hsPkgs.esqueleto)
          (hsPkgs.exceptions)
          (hsPkgs.haskoin-core)
          (hsPkgs.largeword)
          (hsPkgs.lifted-async)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.persistent)
          (hsPkgs.persistent-template)
          (hsPkgs.resource-pool)
          (hsPkgs.random)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.stm-conduit)
          (hsPkgs.string-conversions)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
      tests = {
        "test-haskoin-node" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskoin-core)
            (hsPkgs.haskoin-node)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.persistent)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.resourcet)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }