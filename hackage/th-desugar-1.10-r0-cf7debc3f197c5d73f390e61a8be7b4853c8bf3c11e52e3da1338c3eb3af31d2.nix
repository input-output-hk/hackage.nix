{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "th-desugar"; version = "1.10"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Richard Eisenberg <rae@cs.brynmawr.edu>";
      homepage = "https://github.com/goldfirere/th-desugar";
      url = "";
      synopsis = "Functions to desugar Template Haskell";
      description = "This package provides the Language.Haskell.TH.Desugar module, which desugars\nTemplate Haskell's rich encoding of Haskell syntax into a simpler encoding.\nThis desugaring discards surface syntax information (such as the use of infix\noperators) but retains the original meaning of the TH code. The intended use\nof this package is as a preprocessor for more advanced code manipulation\ntools. Note that the input to any of the ds... functions should be produced\nfrom a TH quote, using the syntax [| ... |]. If the input to these functions\nis a hand-coded TH syntax tree, the results may be unpredictable. In\nparticular, it is likely that promoted datatypes will not work as expected.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."fail" or ((hsPkgs.pkgs-errors).buildDepError "fail"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."ordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "ordered-containers"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."th-abstraction" or ((hsPkgs.pkgs-errors).buildDepError "th-abstraction"))
          (hsPkgs."th-lift" or ((hsPkgs.pkgs-errors).buildDepError "th-lift"))
          (hsPkgs."th-orphans" or ((hsPkgs.pkgs-errors).buildDepError "th-orphans"))
          (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."th-desugar" or ((hsPkgs.pkgs-errors).buildDepError "th-desugar"))
            (hsPkgs."th-lift" or ((hsPkgs.pkgs-errors).buildDepError "th-lift"))
            (hsPkgs."th-orphans" or ((hsPkgs.pkgs-errors).buildDepError "th-orphans"))
            (hsPkgs."th-expand-syns" or ((hsPkgs.pkgs-errors).buildDepError "th-expand-syns"))
            ];
          buildable = true;
          };
        };
      };
    }