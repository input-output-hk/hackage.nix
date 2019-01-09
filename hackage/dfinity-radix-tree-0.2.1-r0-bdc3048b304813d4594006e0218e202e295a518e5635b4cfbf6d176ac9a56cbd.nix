{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dfinity-radix-tree"; version = "0.2.1"; };
      license = "GPL-3.0-only";
      copyright = "2018 DFINITY Stiftung";
      maintainer = "DFINITY USA Research <team@dfinity.org>";
      author = "Enzo Haussecker <enzo@dfinity.org>";
      homepage = "https://github.com/dfinity-lab/hs-radix-tree";
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
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.semigroups)
          (hsPkgs.serialise)
          ];
        };
      exes = {
        "dfinity-radix-tree-unit-tests" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.data-default-class)
            (hsPkgs.dfinity-radix-tree)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            ];
          };
        "dfinity-radix-tree-benchmarks" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.cryptohash-sha256)
            (hsPkgs.data-default-class)
            (hsPkgs.dfinity-radix-tree)
            (hsPkgs.leveldb-haskell)
            (hsPkgs.resourcet)
            ];
          };
        };
      };
    }