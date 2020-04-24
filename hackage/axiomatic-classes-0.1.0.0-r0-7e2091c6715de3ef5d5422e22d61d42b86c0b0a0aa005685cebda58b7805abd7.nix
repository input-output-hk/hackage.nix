{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "axiomatic-classes"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "simon@cse.yorku.ca";
      author = "Simon Hudon";
      homepage = "";
      url = "";
      synopsis = "Specify axioms for type classes and quickCheck all available instances";
      description = "Provides a way to specify axioms for type classes\nand to quickCheck all available instances against\nthem";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."th-printf" or ((hsPkgs.pkgs-errors).buildDepError "th-printf"))
          (hsPkgs."control-invariants" or ((hsPkgs.pkgs-errors).buildDepError "control-invariants"))
          (hsPkgs."portable-template-haskell-lens" or ((hsPkgs.pkgs-errors).buildDepError "portable-template-haskell-lens"))
          (hsPkgs."quickcheck-report" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-report"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
          ];
        buildable = true;
        };
      };
    }