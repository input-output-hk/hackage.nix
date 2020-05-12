{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dfinity-radix-tree"; version = "0.5.1"; };
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
          (hsPkgs."BoundedChan" or (errorHandler.buildDepError "BoundedChan"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."blake2" or (errorHandler.buildDepError "blake2"))
          (hsPkgs."bloomfilter" or (errorHandler.buildDepError "bloomfilter"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."concurrent-extra" or (errorHandler.buildDepError "concurrent-extra"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."lens-simple" or (errorHandler.buildDepError "lens-simple"))
          (hsPkgs."leveldb-haskell" or (errorHandler.buildDepError "leveldb-haskell"))
          (hsPkgs."lmdb-simple" or (errorHandler.buildDepError "lmdb-simple"))
          (hsPkgs."lrucaching" or (errorHandler.buildDepError "lrucaching"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."reducers" or (errorHandler.buildDepError "reducers"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."serialise" or (errorHandler.buildDepError "serialise"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "dfinity-radix-tree-benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blake2" or (errorHandler.buildDepError "blake2"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."dfinity-radix-tree" or (errorHandler.buildDepError "dfinity-radix-tree"))
            (hsPkgs."leveldb-haskell" or (errorHandler.buildDepError "leveldb-haskell"))
            (hsPkgs."lmdb-simple" or (errorHandler.buildDepError "lmdb-simple"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."BoundedChan" or (errorHandler.buildDepError "BoundedChan"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."blake2" or (errorHandler.buildDepError "blake2"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."concurrent-extra" or (errorHandler.buildDepError "concurrent-extra"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dfinity-radix-tree" or (errorHandler.buildDepError "dfinity-radix-tree"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."leveldb-haskell" or (errorHandler.buildDepError "leveldb-haskell"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }