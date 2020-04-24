{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { lookup = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "tries"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Various trie implementations in Haskell";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bytestring-trie" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-trie"))
          (hsPkgs."composition" or ((hsPkgs.pkgs-errors).buildDepError "composition"))
          (hsPkgs."composition-extra" or ((hsPkgs.pkgs-errors).buildDepError "composition-extra"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."keys" or ((hsPkgs.pkgs-errors).buildDepError "keys"))
          (hsPkgs."rose-trees" or ((hsPkgs.pkgs-errors).buildDepError "rose-trees"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."sets" or ((hsPkgs.pkgs-errors).buildDepError "sets"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."bytestring-trie" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-trie"))
            (hsPkgs."composition" or ((hsPkgs.pkgs-errors).buildDepError "composition"))
            (hsPkgs."composition-extra" or ((hsPkgs.pkgs-errors).buildDepError "composition-extra"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."keys" or ((hsPkgs.pkgs-errors).buildDepError "keys"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."rose-trees" or ((hsPkgs.pkgs-errors).buildDepError "rose-trees"))
            (hsPkgs."sets" or ((hsPkgs.pkgs-errors).buildDepError "sets"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."tries" or ((hsPkgs.pkgs-errors).buildDepError "tries"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."bytestring-trie" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-trie"))
            (hsPkgs."composition" or ((hsPkgs.pkgs-errors).buildDepError "composition"))
            (hsPkgs."composition-extra" or ((hsPkgs.pkgs-errors).buildDepError "composition-extra"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."keys" or ((hsPkgs.pkgs-errors).buildDepError "keys"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."rose-trees" or ((hsPkgs.pkgs-errors).buildDepError "rose-trees"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."sets" or ((hsPkgs.pkgs-errors).buildDepError "sets"))
            (hsPkgs."tries" or ((hsPkgs.pkgs-errors).buildDepError "tries"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        "bench-lookup" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."bytestring-trie" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-trie"))
            (hsPkgs."composition" or ((hsPkgs.pkgs-errors).buildDepError "composition"))
            (hsPkgs."composition-extra" or ((hsPkgs.pkgs-errors).buildDepError "composition-extra"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."keys" or ((hsPkgs.pkgs-errors).buildDepError "keys"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."rose-trees" or ((hsPkgs.pkgs-errors).buildDepError "rose-trees"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."sets" or ((hsPkgs.pkgs-errors).buildDepError "sets"))
            (hsPkgs."tries" or ((hsPkgs.pkgs-errors).buildDepError "tries"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = if flags.lookup then true else false;
          };
        };
      };
    }