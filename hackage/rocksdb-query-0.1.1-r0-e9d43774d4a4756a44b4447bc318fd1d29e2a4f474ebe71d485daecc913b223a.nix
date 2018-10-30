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
      specVersion = "1.10";
      identifier = {
        name = "rocksdb-query";
        version = "0.1.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "No Rights Reserved";
      maintainer = "xenog@protonmail.com";
      author = "Jean-Pierre Rupp";
      homepage = "https://github.com/xenog/rocksdb-query#readme";
      url = "";
      synopsis = "RocksDB database querying library for Haskell";
      description = "Please see the README on GitHub at <https://github.com/xenog/rocksdb-query#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          (hsPkgs.rocksdb-haskell)
          (hsPkgs.unliftio)
        ];
      };
      tests = {
        "rocksdb-query-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cereal)
            (hsPkgs.hspec)
            (hsPkgs.rocksdb-haskell)
            (hsPkgs.rocksdb-query)
            (hsPkgs.unliftio)
          ];
        };
      };
    };
  }