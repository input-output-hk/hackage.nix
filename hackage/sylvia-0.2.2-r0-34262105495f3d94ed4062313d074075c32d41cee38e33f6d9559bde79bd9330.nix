{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "sylvia"; version = "0.2.2"; };
      license = "LicenseRef-GPL";
      copyright = "2012 Chris Wong";
      maintainer = "chrisyco@gmail.com";
      author = "Chris Wong";
      homepage = "https://github.com/lfairy/sylvia";
      url = "";
      synopsis = "Lambda calculus visualization";
      description = "The Simple Yuser-friendly Lambda Visualization Interaction Application (SYLVIA)\nis a unique way to manipulate untyped lambda calculus expressions, by\nrepresenting them as boxes connected by wires.\n\nIt is an implementation of an idea by Keenan (1996). See\n<http://dkeenan.com/Lambda> for the theory behind this application.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sylvia" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."comonad-transformers" or ((hsPkgs.pkgs-errors).buildDepError "comonad-transformers"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."data-lens" or ((hsPkgs.pkgs-errors).buildDepError "data-lens"))
            (hsPkgs."data-lens-template" or ((hsPkgs.pkgs-errors).buildDepError "data-lens-template"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."void" or ((hsPkgs.pkgs-errors).buildDepError "void"))
            (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."void" or ((hsPkgs.pkgs-errors).buildDepError "void"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-smallcheck"))
            (hsPkgs."smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck"))
            ];
          buildable = true;
          };
        };
      };
    }