{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "automata"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/automata";
      url = "";
      synopsis = "automata";
      description = "This package implements the following:\n\nDeterministic Finite State Automata (DFSA)\n\nNon-Deterministic Finite State Automata (NFSA)\n\nDeterministic Finite State Transducers (DFST)\n\nNon-Deterministic Finite State Transducers (NFST)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."primitive-containers" or ((hsPkgs.pkgs-errors).buildDepError "primitive-containers"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."contiguous" or ((hsPkgs.pkgs-errors).buildDepError "contiguous"))
          (hsPkgs."semirings" or ((hsPkgs.pkgs-errors).buildDepError "semirings"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."automata" or ((hsPkgs.pkgs-errors).buildDepError "automata"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."enum-types" or ((hsPkgs.pkgs-errors).buildDepError "enum-types"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            (hsPkgs."leancheck-enum-instances" or ((hsPkgs.pkgs-errors).buildDepError "leancheck-enum-instances"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."quickcheck-classes" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-classes"))
            (hsPkgs."quickcheck-enum-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-enum-instances"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-leancheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-leancheck"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }