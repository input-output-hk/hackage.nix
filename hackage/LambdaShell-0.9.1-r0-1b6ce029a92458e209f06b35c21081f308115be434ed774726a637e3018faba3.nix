{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "LambdaShell"; version = "0.9.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "robdockins AT fastmail DOT fm";
      author = "Robert Dockins";
      homepage = "http://www.cs.princeton.edu/~rdockins/lambda/home/";
      url = "";
      synopsis = "Simple shell for evaluating lambda expressions";
      description = "The lambda shell is a feature-rich shell environment and command-line tool for\nevaluating terms of the pure, untyped lambda calculus.  The Lambda\nShell builds on the shell creation framework Shellac, and showcases\nmost of Shellac's features.";
      buildType = "Simple";
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
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.8") (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"));
          libs = [
            (pkgs."readline" or ((hsPkgs.pkgs-errors).sysDepError "readline"))
            ];
          buildable = true;
          };
        };
      };
    }