{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "th-alpha"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Julian K. Arni";
      maintainer = "Julian K. Arni <jkarni@gmail.com>";
      author = "Julian K. Arni";
      homepage = "https://github.com/jkarni/th-alpha";
      url = "";
      synopsis = "Alpha equivalence for TH Exp";
      description = "Compare TH expressions (or clauses, patterns, etc.) for alpha equivalence.\nThat is, compare for equality modulo the renaming of bound variables.\n\n>>> areExpAEq [| \\x -> x |] [| \\y -> y |]\nTrue\n\nThis can be useful when for instance testing libraries that use Template\nHaskell - usually correctness is only defined up to alpha equivalence.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."th-desugar" or ((hsPkgs.pkgs-errors).buildDepError "th-desugar"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."th-alpha" or ((hsPkgs.pkgs-errors).buildDepError "th-alpha"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }