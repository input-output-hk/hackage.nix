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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."BoundedChan" or ((hsPkgs.pkgs-errors).buildDepError "BoundedChan"))
          (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."concurrent-extra" or ((hsPkgs.pkgs-errors).buildDepError "concurrent-extra"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."hashtables" or ((hsPkgs.pkgs-errors).buildDepError "hashtables"))
          (hsPkgs."lens-simple" or ((hsPkgs.pkgs-errors).buildDepError "lens-simple"))
          (hsPkgs."leveldb-haskell" or ((hsPkgs.pkgs-errors).buildDepError "leveldb-haskell"))
          (hsPkgs."lrucaching" or ((hsPkgs.pkgs-errors).buildDepError "lrucaching"))
          (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."reducers" or ((hsPkgs.pkgs-errors).buildDepError "reducers"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."serialise" or ((hsPkgs.pkgs-errors).buildDepError "serialise"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "dfinity-radix-tree-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."dfinity-radix-tree" or ((hsPkgs.pkgs-errors).buildDepError "dfinity-radix-tree"))
            ];
          buildable = true;
          };
        };
      tests = {
        "dfinity-radix-tree-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."BoundedChan" or ((hsPkgs.pkgs-errors).buildDepError "BoundedChan"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
            (hsPkgs."concurrent-extra" or ((hsPkgs.pkgs-errors).buildDepError "concurrent-extra"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
            (hsPkgs."dfinity-radix-tree" or ((hsPkgs.pkgs-errors).buildDepError "dfinity-radix-tree"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."leveldb-haskell" or ((hsPkgs.pkgs-errors).buildDepError "leveldb-haskell"))
            (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }