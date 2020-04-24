{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "quickcheck-with-counterexamples";
        version = "1.1";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nick@smallbone.se";
      author = "Nick Smallbone";
      homepage = "http://www.github.com/nick8325/quickcheck-with-counterexamples";
      url = "";
      synopsis = "Get counterexamples from QuickCheck as Haskell values";
      description = "When QuickCheck finds a counterexample, it prints it out but\ndoesn't save it so that the programmer can access it. This can be\nannoying when debugging.\n\nThis library provides a small extension to QuickCheck that returns\ncounterexamples as normal Haskell values. To use it, just import\n\"Test.QuickCheck.Counterexamples\" /instead of/ @Test.QuickCheck@.\nThe library is largely compatible with normal QuickCheck, but the\nreturn types of 'Test.QuickCheck.Counterexamples.quickCheck' and\nrelated functions are changed to include a counterexample.\n\nFor usage information, see the \"Test.QuickCheck.Counterexamples\"\nmodule.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }