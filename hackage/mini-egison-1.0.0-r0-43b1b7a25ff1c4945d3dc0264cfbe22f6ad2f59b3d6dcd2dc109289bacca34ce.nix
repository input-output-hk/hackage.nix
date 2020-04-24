{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "mini-egison"; version = "1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Satoshi Egi <egi@egison.org>";
      author = "Mayuko Kori, Satoshi Egi";
      homepage = "https://github.com/egison/egison-haskell#readme";
      url = "";
      synopsis = "Template Haskell Implementation of Egison Pattern Matching";
      description = "This package provides the pattern-matching facility that fulfills the following three criteria for practical pattern matching for non-free data types\\: (i) non-linear pattern matching with backtracking; (ii) extensibility of pattern-matching algorithms; (iii) ad-hoc polymorphism of patterns.\nNon-free data types are data types whose data have no standard forms.\nFor example, multisets are non-free data types because the multiset '[a,b,b]' has two other equivalent but literally different forms '[b,a,b]' and '[b,b,a]'.\n\nThe design of the pattern-matching facility is originally proposed in <https://arxiv.org/abs/1808.10603 this paper> and implemented in <http://github.com/egison/egison/ the Egison programming language>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."recursion-schemes" or ((hsPkgs.pkgs-errors).buildDepError "recursion-schemes"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."haskell-src-meta" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-meta"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."egison-pattern-src" or ((hsPkgs.pkgs-errors).buildDepError "egison-pattern-src"))
          (hsPkgs."egison-pattern-src-th-mode" or ((hsPkgs.pkgs-errors).buildDepError "egison-pattern-src-th-mode"))
          ];
        buildable = true;
        };
      exes = {
        "cdcl" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mini-egison" or ((hsPkgs.pkgs-errors).buildDepError "mini-egison"))
            (hsPkgs."sort" or ((hsPkgs.pkgs-errors).buildDepError "sort"))
            ];
          buildable = true;
          };
        };
      tests = {
        "mini-egison-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mini-egison" or ((hsPkgs.pkgs-errors).buildDepError "mini-egison"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."primes" or ((hsPkgs.pkgs-errors).buildDepError "primes"))
            ];
          buildable = true;
          };
        };
      };
    }