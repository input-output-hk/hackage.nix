{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "pointfree-fancy"; version = "1.1.1.15"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Vanessa McHale <vamchale@gmail.com>";
      author = "Thomas Jäger";
      homepage = "";
      url = "";
      synopsis = "Tool for refactoring expressions into pointfree form";
      description = "The pointfree tool is a standalone command-line version of the pl\nplugin for lambdabot.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."pointfree-internal" or ((hsPkgs.pkgs-errors).buildDepError "pointfree-internal"))
          ];
        buildable = true;
        };
      sublibs = {
        "pointfree-internal" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      exes = {
        "pointfree" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pointfree-internal" or ((hsPkgs.pkgs-errors).buildDepError "pointfree-internal"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pointfree-internal" or ((hsPkgs.pkgs-errors).buildDepError "pointfree-internal"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }