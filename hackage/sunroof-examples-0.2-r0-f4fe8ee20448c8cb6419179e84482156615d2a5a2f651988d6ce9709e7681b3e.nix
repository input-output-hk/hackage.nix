{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sunroof-examples"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 The University of Kansas";
      maintainer = "Jan Bracker <jbra@informatik.uni-kiel.de>";
      author = "Andrew Gill <andygill@ku.edu>, Jan Bracker <jbra@informatik.uni-kiel.de>";
      homepage = "https://github.com/ku-fpg/sunroof-examples";
      url = "";
      synopsis = "Tests for Sunroof";
      description = "Example applications of the sunroof-compiler and sunroof-server package.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sunroof-browser-info" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sunroof-compiler" or ((hsPkgs.pkgs-errors).buildDepError "sunroof-compiler"))
            (hsPkgs."sunroof-server" or ((hsPkgs.pkgs-errors).buildDepError "sunroof-server"))
            (hsPkgs."Boolean" or ((hsPkgs.pkgs-errors).buildDepError "Boolean"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            ];
          buildable = true;
          };
        "sunroof-canvas" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sunroof-compiler" or ((hsPkgs.pkgs-errors).buildDepError "sunroof-compiler"))
            (hsPkgs."sunroof-server" or ((hsPkgs.pkgs-errors).buildDepError "sunroof-server"))
            (hsPkgs."Boolean" or ((hsPkgs.pkgs-errors).buildDepError "Boolean"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            ];
          buildable = true;
          };
        "sunroof-clock" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sunroof-compiler" or ((hsPkgs.pkgs-errors).buildDepError "sunroof-compiler"))
            (hsPkgs."Boolean" or ((hsPkgs.pkgs-errors).buildDepError "Boolean"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        "sunroof-fib" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sunroof-compiler" or ((hsPkgs.pkgs-errors).buildDepError "sunroof-compiler"))
            (hsPkgs."sunroof-server" or ((hsPkgs.pkgs-errors).buildDepError "sunroof-server"))
            (hsPkgs."Boolean" or ((hsPkgs.pkgs-errors).buildDepError "Boolean"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            ];
          buildable = true;
          };
        "sunroof-unit" = {
          depends = [
            (hsPkgs."sunroof-compiler" or ((hsPkgs.pkgs-errors).buildDepError "sunroof-compiler"))
            (hsPkgs."sunroof-server" or ((hsPkgs.pkgs-errors).buildDepError "sunroof-server"))
            (hsPkgs."Boolean" or ((hsPkgs.pkgs-errors).buildDepError "Boolean"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parallel-io" or ((hsPkgs.pkgs-errors).buildDepError "parallel-io"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        "sunroof-inplace-shaker" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."shake" or ((hsPkgs.pkgs-errors).buildDepError "shake"))
            ];
          buildable = true;
          };
        };
      };
    }