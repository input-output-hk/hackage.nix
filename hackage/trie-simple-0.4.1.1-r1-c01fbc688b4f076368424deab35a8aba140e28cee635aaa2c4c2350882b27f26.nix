{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "trie-simple"; version = "0.4.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Koji Miyazato";
      maintainer = "viercc@gmail.com";
      author = "Koji Miyazato";
      homepage = "";
      url = "";
      synopsis = "Simple Map-based Trie";
      description = "Trie data structure `TMap` to hold mapping from list of characters to\nsomething, i.e. isomorphic to `Map [c] v`.\nIt is more efficient to query compared to `Map`. Also, it supports extra\noperation like prefix matching.\nThis package also contains `TSet`, which is isomorphic to `Set` of lists of\ncharacters.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "trie-simple-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."trie-simple" or ((hsPkgs.pkgs-errors).buildDepError "trie-simple"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "trie-benchmark" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            (hsPkgs."trie-simple" or ((hsPkgs.pkgs-errors).buildDepError "trie-simple"))
            ];
          buildable = true;
          };
        };
      };
    }