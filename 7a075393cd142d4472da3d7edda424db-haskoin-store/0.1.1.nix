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
        name = "haskoin-store";
        version = "0.1.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "xenog@protonmail.com";
      author = "Jean-Pierre Rupp";
      homepage = "http://github.com/haskoin/haskoin#readme";
      url = "";
      synopsis = "Storage and index for Bitcoin and Bitcoin Cash";
      description = "Store blocks, transactions, and balances for Bitcoin or Bitcoin Cash, and make that information via REST API.";
      buildType = "Simple";
    };
    components = {
      "haskoin-store" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.haskoin-core)
          (hsPkgs.haskoin-node)
          (hsPkgs.hspec)
          (hsPkgs.http-types)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.nqe)
          (hsPkgs.optparse-applicative)
          (hsPkgs.random)
          (hsPkgs.rocksdb-haskell)
          (hsPkgs.rocksdb-query)
          (hsPkgs.scotty)
          (hsPkgs.string-conversions)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unliftio)
        ];
      };
      exes = {
        "haskoin-store" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.conduit)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.haskoin-core)
            (hsPkgs.haskoin-node)
            (hsPkgs.haskoin-store)
            (hsPkgs.hspec)
            (hsPkgs.http-types)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.nqe)
            (hsPkgs.optparse-applicative)
            (hsPkgs.random)
            (hsPkgs.rocksdb-haskell)
            (hsPkgs.scotty)
            (hsPkgs.string-conversions)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unliftio)
          ];
        };
      };
      tests = {
        "haskoin-store-test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.conduit)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.haskoin-core)
            (hsPkgs.haskoin-node)
            (hsPkgs.haskoin-store)
            (hsPkgs.hspec)
            (hsPkgs.http-types)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.nqe)
            (hsPkgs.optparse-applicative)
            (hsPkgs.random)
            (hsPkgs.rocksdb-haskell)
            (hsPkgs.scotty)
            (hsPkgs.string-conversions)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unliftio)
          ];
        };
      };
    };
  }