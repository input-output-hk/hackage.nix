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
        name = "dfinity-radix-tree";
        version = "0.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "2018 DFINITY Stiftung";
      maintainer = "DFINITY USA Research <team@dfinity.org>";
      author = "Enzo Haussecker <enzo@dfinity.org>";
      homepage = "https://github.com/dfinity-lab/hs-radix-tree";
      url = "";
      synopsis = "A Merkleized key–value data store.";
      description = "This library provides a simple data integrity layer for LevelDB.";
      buildType = "Simple";
    };
    components = {
      "dfinity-radix-tree" = {
        depends  = [
          (hsPkgs.BoundedChan)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bloomfilter)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.cryptohash-sha256)
          (hsPkgs.data-default-class)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.lens-simple)
          (hsPkgs.leveldb-haskell)
          (hsPkgs.lrucaching)
          (hsPkgs.resourcet)
          (hsPkgs.semigroups)
          (hsPkgs.serialise)
        ];
      };
      exes = {
        "dfinity-radix-tree-unit-tests" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.data-default-class)
            (hsPkgs.dfinity-radix-tree)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
          ];
        };
        "dfinity-radix-tree-benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.cryptohash-sha256)
            (hsPkgs.data-default-class)
            (hsPkgs.dfinity-radix-tree)
            (hsPkgs.resourcet)
          ];
        };
      };
    };
  }