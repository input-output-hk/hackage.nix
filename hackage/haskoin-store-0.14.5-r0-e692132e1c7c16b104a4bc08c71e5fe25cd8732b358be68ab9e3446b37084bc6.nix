{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "haskoin-store"; version = "0.14.5"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "xenog@protonmail.com";
      author = "Jean-Pierre Rupp";
      homepage = "http://github.com/haskoin/haskoin-store#readme";
      url = "";
      synopsis = "Storage and index for Bitcoin and Bitcoin Cash";
      description = "Store blocks, transactions, and balances for Bitcoin or Bitcoin Cash, and make that information via REST API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.hashable)
          (hsPkgs.haskoin-core)
          (hsPkgs.haskoin-node)
          (hsPkgs.http-types)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.nqe)
          (hsPkgs.random)
          (hsPkgs.rocksdb-haskell)
          (hsPkgs.rocksdb-query)
          (hsPkgs.scotty)
          (hsPkgs.string-conversions)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unliftio)
          (hsPkgs.unordered-containers)
          ];
        };
      exes = {
        "haskoin-store" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.haskoin-core)
            (hsPkgs.haskoin-node)
            (hsPkgs.haskoin-store)
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
            (hsPkgs.unordered-containers)
            ];
          };
        };
      tests = {
        "haskoin-store-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.hashable)
            (hsPkgs.haskoin-core)
            (hsPkgs.haskoin-node)
            (hsPkgs.haskoin-store)
            (hsPkgs.hspec)
            (hsPkgs.http-types)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.nqe)
            (hsPkgs.random)
            (hsPkgs.rocksdb-haskell)
            (hsPkgs.rocksdb-query)
            (hsPkgs.scotty)
            (hsPkgs.string-conversions)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unliftio)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }