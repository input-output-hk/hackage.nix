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
      specVersion = "1.10";
      identifier = {
        name = "haskoin-node";
        version = "0.5.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "xenog@protonmail.com";
      author = "Jean-Pierre Rupp";
      homepage = "http://github.com/haskoin/haskoin#readme";
      url = "";
      synopsis = "Haskoin Node P2P library for Bitcoin and Bitcoin Cash";
      description = "Bitcoin and Bitcoin Cash peer-to-peer protocol library featuring headers-first synchronisation.";
      buildType = "Simple";
    };
    components = {
      "haskoin-node" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.hashable)
          (hsPkgs.haskoin-core)
          (hsPkgs.hspec)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.nqe)
          (hsPkgs.random)
          (hsPkgs.resourcet)
          (hsPkgs.rocksdb-haskell)
          (hsPkgs.rocksdb-query)
          (hsPkgs.string-conversions)
          (hsPkgs.time)
          (hsPkgs.unique)
          (hsPkgs.unliftio)
        ];
      };
      tests = {
        "haskoin-node-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.haskoin-core)
            (hsPkgs.haskoin-node)
            (hsPkgs.hspec)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.nqe)
            (hsPkgs.random)
            (hsPkgs.resourcet)
            (hsPkgs.rocksdb-haskell)
            (hsPkgs.rocksdb-query)
            (hsPkgs.string-conversions)
            (hsPkgs.unliftio)
          ];
        };
      };
    };
  }