{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskintex"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dhelta.diaz@gmail.com";
      author = "Daniel Díaz";
      homepage = "http://daniel-diaz.github.io/projects/haskintex";
      url = "";
      synopsis = "Haskell Evaluation inside of LaTeX code.";
      description = "The /haskintex/ program is a tool that reads a LaTeX file and evaluates Haskell expressions contained\nin some specific commands and environments. It allows you to define your own functions, use any GHC Haskell language\nextension and, in brief, anything you can do within Haskell. You can freely add any Haskell code you need, and make\nthis code appear /optionally/ in the LaTeX output. It is a tiny program, and therefore, easy to understand, use and\npredict.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haskintex" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."HaTeX" or ((hsPkgs.pkgs-errors).buildDepError "HaTeX"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            ];
          buildable = true;
          };
        };
      };
    }