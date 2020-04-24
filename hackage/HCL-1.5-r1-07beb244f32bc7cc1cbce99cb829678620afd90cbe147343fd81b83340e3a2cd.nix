{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "HCL"; version = "1.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jonathan Lamothe <jlamothe1980@gmail.com>";
      author = "Justin Bailey";
      homepage = "http://github.com/m4dc4p/hcl/tree/master";
      url = "";
      synopsis = "High-level library for building command line interfaces.";
      description = "This module provides a set of functions for building simple command-line\ninterfaces. It allows interfaces which collect values (such as Integers,\nDates, or other structured values), build lists of values, and use simple\nmenus. It is not intended to build complex interfaces with full cursor\ncontrol. It is oriented towards line-based interfaces.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "hangman" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HCL" or ((hsPkgs.pkgs-errors).buildDepError "HCL"))
            ];
          buildable = true;
          };
        };
      };
    }