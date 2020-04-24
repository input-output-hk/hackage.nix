{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dfinity-radix-tree"; version = "0.4.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."BoundedChan" or ((hsPkgs.pkgs-errors).buildDepError "BoundedChan"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
          (hsPkgs."blake2" or ((hsPkgs.pkgs-errors).buildDepError "blake2"))
          (hsPkgs."bloomfilter" or ((hsPkgs.pkgs-errors).buildDepError "bloomfilter"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."concurrent-extra" or ((hsPkgs.pkgs-errors).buildDepError "concurrent-extra"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."lens-simple" or ((hsPkgs.pkgs-errors).buildDepError "lens-simple"))
          (hsPkgs."leveldb-haskell" or ((hsPkgs.pkgs-errors).buildDepError "leveldb-haskell"))
          (hsPkgs."lmdb-simple" or ((hsPkgs.pkgs-errors).buildDepError "lmdb-simple"))
          (hsPkgs."lrucaching" or ((hsPkgs.pkgs-errors).buildDepError "lrucaching"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."serialise" or ((hsPkgs.pkgs-errors).buildDepError "serialise"))
          ];
        buildable = true;
        };
      exes = {
        "dfinity-radix-tree-benchmarks" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."blake2" or ((hsPkgs.pkgs-errors).buildDepError "blake2"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."dfinity-radix-tree" or ((hsPkgs.pkgs-errors).buildDepError "dfinity-radix-tree"))
            (hsPkgs."leveldb-haskell" or ((hsPkgs.pkgs-errors).buildDepError "leveldb-haskell"))
            (hsPkgs."lmdb-simple" or ((hsPkgs.pkgs-errors).buildDepError "lmdb-simple"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."dfinity-radix-tree" or ((hsPkgs.pkgs-errors).buildDepError "dfinity-radix-tree"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }