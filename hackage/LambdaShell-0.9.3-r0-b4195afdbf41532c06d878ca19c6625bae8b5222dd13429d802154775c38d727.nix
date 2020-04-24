{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "LambdaShell"; version = "0.9.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "robdockins AT fastmail DOT fm";
      author = "Robert Dockins";
      homepage = "http://rwd.rdockins.name/lambda/home/";
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."Shellac" or ((hsPkgs.pkgs-errors).buildDepError "Shellac"))
            (hsPkgs."Shellac-compatline" or ((hsPkgs.pkgs-errors).buildDepError "Shellac-compatline"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.8") (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"));
          buildable = true;
          };
        };
      };
    }