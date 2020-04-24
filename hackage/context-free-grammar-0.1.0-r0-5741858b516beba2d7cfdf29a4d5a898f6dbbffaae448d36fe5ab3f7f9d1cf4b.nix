{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "context-free-grammar"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Eric Nedervold";
      maintainer = "Eric Nedervold<nedervoldsoftware@gmail.com>";
      author = "Eric Nedervold<nedervoldsoftware@gmail.com>";
      homepage = "http://github.com/nedervold/context-free-grammar";
      url = "";
      synopsis = "Basic algorithms on context-free grammars";
      description = "Basic algorithms on context-free grammars:\n\n* augmenting a grammar\n\n* calculating nullability\n\n* calculating reachability\n\n* calculating productivity\n\n* calculating first sets\n\n* calculating follow sets\n\n* calculating predict sets\n\nYou may define your context-free grammar textually using 'parse'\nor with the quasiquoter 'bnf' (both in \"Data.Cfg.Bnf\"), or you may\nuse any data structure you like after making it an instance of\n'Cfg' (found in \"Data.Cfg.Cfg\").\n\nTesting is very thin in this version; basically just\nsanity-checking.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."control-monad-omega" or ((hsPkgs.pkgs-errors).buildDepError "control-monad-omega"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."context-free-grammar" or ((hsPkgs.pkgs-errors).buildDepError "context-free-grammar"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-properties" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-properties"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }