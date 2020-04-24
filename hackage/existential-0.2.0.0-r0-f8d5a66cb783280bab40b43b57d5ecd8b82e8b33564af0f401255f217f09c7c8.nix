{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "existential"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "simon@cse.yorku.ca";
      author = "Simon Hudon";
      homepage = "";
      url = "";
      synopsis = "Existential types with lens-like accessors.";
      description = "Existential types encapsulated in Cell type together with some lens-like accessors. A template-haskell-based factory generator is also provided to use TypeRep to reconstruct Cell objects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."serialize-instances" or ((hsPkgs.pkgs-errors).buildDepError "serialize-instances"))
          (hsPkgs."th-printf" or ((hsPkgs.pkgs-errors).buildDepError "th-printf"))
          (hsPkgs."quickcheck-report" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-report"))
          (hsPkgs."portable-template-haskell-lens" or ((hsPkgs.pkgs-errors).buildDepError "portable-template-haskell-lens"))
          (hsPkgs."control-invariants" or ((hsPkgs.pkgs-errors).buildDepError "control-invariants"))
          ];
        buildable = true;
        };
      };
    }