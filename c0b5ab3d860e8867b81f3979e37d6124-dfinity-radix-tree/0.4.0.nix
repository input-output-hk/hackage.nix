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
        version = "0.4.0";
      };
      license = "GPL-3.0-only";
      copyright = "2018 DFINITY Stiftung";
      maintainer = "DFINITY USA Research <team@dfinity.org>";
      author = "Enzo Haussecker <enzo@dfinity.org>";
      homepage = "https://github.com/dfinity-lab/hs-dfinity-radix-tree";
      url = "";
      synopsis = "A generic data integrity layer.";
      description = "This library allows you to construct a Merkle tree on top of any underlying\nkey–value database. It works by organizing your key–value pairs into a binary\nradix tree, which is well suited for storing large dictionaries of fairly\nrandom keys, and is optimized for storing keys of the same length.";
      buildType = "Simple";
    };
    components = {
      "dfinity-radix-tree" = {
        depends  = [
          (hsPkgs.BoundedChan)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.blake2)
          (hsPkgs.bloomfilter)
          (hsPkgs.bytestring)
          (hsPkgs.concurrent-extra)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.lens-simple)
          (hsPkgs.leveldb-haskell)
          (hsPkgs.lmdb-simple)
          (hsPkgs.lrucaching)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.semigroups)
          (hsPkgs.serialise)
        ];
      };
      exes = {
        "dfinity-radix-tree-benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.blake2)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.criterion)
            (hsPkgs.data-default-class)
            (hsPkgs.dfinity-radix-tree)
            (hsPkgs.leveldb-haskell)
            (hsPkgs.lmdb-simple)
            (hsPkgs.temporary)
            (hsPkgs.resourcet)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.dfinity-radix-tree)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.aeson)
            (hsPkgs.base16-bytestring)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }