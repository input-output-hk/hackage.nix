{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dfinity-radix-tree"; version = "0.5.0"; };
      license = "GPL-3.0-only";
      copyright = "2018 DFINITY Stiftung";
      maintainer = "Enzo Haussecker <enzo@dfinity.org>, Remy Goldschmidt <remy@dfinity.org>, Armando Ramirez <armando@dfinity.org>";
      author = "Enzo Haussecker <enzo@dfinity.org>, Remy Goldschmidt <remy@dfinity.org>, Armando Ramirez <armando@dfinity.org>";
      homepage = "https://github.com/dfinity-lab/dev";
      url = "";
      synopsis = "A generic data integrity layer.";
      description = "This library allows you to construct a Merkle tree on top of any underlying\nkey–value database. It works by organizing your key–value pairs into a binary\nradix tree, which is well suited for storing large dictionaries of fairly\nrandom keys, and is optimized for storing keys of the same length.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
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
          (hsPkgs.directory)
          (hsPkgs.dlist)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashtables)
          (hsPkgs.lens-simple)
          (hsPkgs.leveldb-haskell)
          (hsPkgs.lmdb-simple)
          (hsPkgs.lrucaching)
          (hsPkgs.mtl)
          (hsPkgs.reducers)
          (hsPkgs.resourcet)
          (hsPkgs.semigroups)
          (hsPkgs.serialise)
          (hsPkgs.stm)
          (hsPkgs.temporary)
          (hsPkgs.transformers)
          ];
        };
      exes = {
        "dfinity-radix-tree-benchmarks" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.blake2)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.criterion)
            (hsPkgs.data-default-class)
            (hsPkgs.dfinity-radix-tree)
            (hsPkgs.leveldb-haskell)
            (hsPkgs.lmdb-simple)
            (hsPkgs.resourcet)
            (hsPkgs.temporary)
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.BoundedChan)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.blake2)
            (hsPkgs.bytestring)
            (hsPkgs.concurrent-extra)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.dfinity-radix-tree)
            (hsPkgs.filepath)
            (hsPkgs.leveldb-haskell)
            (hsPkgs.mtl)
            (hsPkgs.resourcet)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.temporary)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }