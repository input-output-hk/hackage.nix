{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "unbound-generics"; version = "0.0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014, Aleksey Kliger";
      maintainer = "aleksey@lambdageek.org";
      author = "Aleksey Kliger";
      homepage = "http://github.com/lambdageek/unbound-generics";
      url = "";
      synopsis = "Reimplementation of Unbound using GHC Generics";
      description = "Specify the binding structure of your data type with an\nexpressive set of type combinators, and unbound-generics\nhandles the rest!  Automatically derives\nalpha-equivalence, free variable calculation,\ncapture-avoiding substitution, and more. See\n@Unbound.Generics.LocallyNameless@ to get started.\n\nThis is an independent re-implementation of <http://hackage.haskell.org/package/unbound Unbound>\nbut using <http://www.haskell.org/ghc/docs/latest/html/libraries/base-4.7.0.1/GHC-Generics.html GHC.Generics>\ninstead of <http://hackage.haskell.org/package/RepLib RepLib>.\nSee the accompanying README for some porting notes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."contravariant" or ((hsPkgs.pkgs-errors).buildDepError "contravariant"))
          ];
        buildable = true;
        };
      tests = {
        "test-unbound-generics" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."unbound-generics" or ((hsPkgs.pkgs-errors).buildDepError "unbound-generics"))
            ];
          buildable = true;
          };
        };
      };
    }