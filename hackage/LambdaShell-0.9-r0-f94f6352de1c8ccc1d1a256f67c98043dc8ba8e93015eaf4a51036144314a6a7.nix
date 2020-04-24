{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "LambdaShell"; version = "0.9"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "robdockins AT fastmail DOT fm";
      author = "Robert Dockins";
      homepage = "";
      url = "";
      synopsis = "Simple shell for evaluating lambda expressions";
      description = "The lambda shell is a feature-rich shell environment and command-line tool for\nevaluating terms of the pure, untyped lambda calculus.  The Lambda\nShell builds on the shell creation framework Shellac, and showcases\nmost of Shellac's features.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "lambdaShell" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."readline" or ((hsPkgs.pkgs-errors).buildDepError "readline"))
            (hsPkgs."Shellac" or ((hsPkgs.pkgs-errors).buildDepError "Shellac"))
            (hsPkgs."Shellac-readline" or ((hsPkgs.pkgs-errors).buildDepError "Shellac-readline"))
            ];
          libs = [
            (pkgs."readline" or ((hsPkgs.pkgs-errors).sysDepError "readline"))
            ];
          buildable = true;
          };
        };
      };
    }