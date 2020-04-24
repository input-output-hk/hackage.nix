{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskintex"; version = "0.3.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dhelta.diaz@gmail.com";
      author = "Daniel Díaz";
      homepage = "http://daniel-diaz.github.io/projects/haskintex";
      url = "";
      synopsis = "Haskell Evaluation inside of LaTeX code.";
      description = "The /haskintex/ (Haskell in LaTeX) program is a tool that reads a LaTeX file and evaluates Haskell expressions contained\nin some specific commands and environments. It allows you to define your own functions, use any GHC Haskell language\nextension and, in brief, anything you can do within Haskell.\nAdditionally, it is possible to include expressions of 'LaTeX' type (see /HaTeX/ package) and render them as LaTeX code.\nYou can freely add any Haskell code you need, and make this code appear /optionally/ in the LaTeX output. It is a tiny program,\nand therefore, easy to understand, use and predict.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."HaTeX" or ((hsPkgs.pkgs-errors).buildDepError "HaTeX"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."hint" or ((hsPkgs.pkgs-errors).buildDepError "hint"))
          ];
        buildable = true;
        };
      exes = {
        "haskintex" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskintex" or ((hsPkgs.pkgs-errors).buildDepError "haskintex"))
            ];
          buildable = true;
          };
        };
      };
    }