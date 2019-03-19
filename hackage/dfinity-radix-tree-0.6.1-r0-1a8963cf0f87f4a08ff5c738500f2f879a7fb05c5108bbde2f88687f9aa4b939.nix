{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "dfinity-radix-tree"; version = "0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 DFINITY Stiftung";
      maintainer = "Enzo Haussecker <enzo@dfinity.org>, Remy Goldschmidt <remy@dfinity.org>, Armando Ramirez <armando@dfinity.org>";
      author = "Enzo Haussecker <enzo@dfinity.org>, Remy Goldschmidt <remy@dfinity.org>, Armando Ramirez <armando@dfinity.org>";
      homepage = "https://dfinity.org";
      url = "";
      synopsis = "A generic data integrity layer.";
      description = "This library allows you to construct a Merkle tree on top of any underlying\nkey–value database. It works by organizing your key–value pairs into a binary\nradix tree, which is well suited for storing large dictionaries of fairly\nrandom keys, and is optimized for storing keys of the same length.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.BoundedChan)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.concurrent-extra)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.data-default-class)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.dlist)
          (hsPkgs.hashtables)
          (hsPkgs.lens-simple)
          (hsPkgs.leveldb-haskell)
          (hsPkgs.lrucaching)
          (hsPkgs.memory)
          (hsPkgs.mtl)
          (hsPkgs.reducers)
          (hsPkgs.resourcet)
          (hsPkgs.serialise)
          (hsPkgs.temporary)
          (hsPkgs.transformers)
          ];
        };
      exes = {
        "dfinity-radix-tree-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.dfinity-radix-tree)
            ];
          };
        };
      tests = {
        "dfinity-radix-tree-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.BoundedChan)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.clock)
            (hsPkgs.concurrent-extra)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.cryptonite)
            (hsPkgs.dfinity-radix-tree)
            (hsPkgs.filepath)
            (hsPkgs.leveldb-haskell)
            (hsPkgs.memory)
            (hsPkgs.mtl)
            (hsPkgs.resourcet)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }