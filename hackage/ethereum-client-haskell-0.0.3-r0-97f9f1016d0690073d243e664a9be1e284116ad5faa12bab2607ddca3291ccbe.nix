{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ethereum-client-haskell"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jamshidnh@gmail.com";
      author = "Jamshid";
      homepage = "";
      url = "";
      synopsis = "A Haskell version of an Ethereum client";
      description = "The client described in the Ethereum Yellowpaper";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ethereumH" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
            (hsPkgs."entropy" or ((hsPkgs.pkgs-errors).buildDepError "entropy"))
            (hsPkgs."ethereum-merkle-patricia-db" or ((hsPkgs.pkgs-errors).buildDepError "ethereum-merkle-patricia-db"))
            (hsPkgs."ethereum-rlp" or ((hsPkgs.pkgs-errors).buildDepError "ethereum-rlp"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."haskoin" or ((hsPkgs.pkgs-errors).buildDepError "haskoin"))
            (hsPkgs."leveldb-haskell" or ((hsPkgs.pkgs-errors).buildDepError "leveldb-haskell"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."network-simple" or ((hsPkgs.pkgs-errors).buildDepError "network-simple"))
            (hsPkgs."nibblestring" or ((hsPkgs.pkgs-errors).buildDepError "nibblestring"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
            ];
          buildable = true;
          };
        "queryEth" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."ethereum-rlp" or ((hsPkgs.pkgs-errors).buildDepError "ethereum-rlp"))
            (hsPkgs."ethereum-merkle-patricia-db" or ((hsPkgs.pkgs-errors).buildDepError "ethereum-merkle-patricia-db"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."network-simple" or ((hsPkgs.pkgs-errors).buildDepError "network-simple"))
            (hsPkgs."nibblestring" or ((hsPkgs.pkgs-errors).buildDepError "nibblestring"))
            (hsPkgs."haskoin" or ((hsPkgs.pkgs-errors).buildDepError "haskoin"))
            (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."leveldb-haskell" or ((hsPkgs.pkgs-errors).buildDepError "leveldb-haskell"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-ethereumH" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }