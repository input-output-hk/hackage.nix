{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { programs = false; };
    package = {
      specVersion = "1.16";
      identifier = { name = "multiarg"; version = "0.30.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011-2015 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "https://github.com/massysett/multiarg";
      url = "";
      synopsis = "Command lines for options that take multiple arguments";
      description = "multiarg helps you build command-line parsers for\nprograms with options that take more than one argument.\nSee the documentation in the Multiarg module for details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "grover" = {
          depends = (pkgs.lib).optionals (flags.programs) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickpull" or ((hsPkgs.pkgs-errors).buildDepError "quickpull"))
            (hsPkgs."barecheck" or ((hsPkgs.pkgs-errors).buildDepError "barecheck"))
            ];
          buildable = if flags.programs then true else false;
          };
        "telly" = {
          depends = (pkgs.lib).optionals (flags.programs) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickpull" or ((hsPkgs.pkgs-errors).buildDepError "quickpull"))
            (hsPkgs."barecheck" or ((hsPkgs.pkgs-errors).buildDepError "barecheck"))
            ];
          buildable = if flags.programs then true else false;
          };
        };
      tests = {
        "multiarg-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickpull" or ((hsPkgs.pkgs-errors).buildDepError "quickpull"))
            (hsPkgs."barecheck" or ((hsPkgs.pkgs-errors).buildDepError "barecheck"))
            ];
          buildable = true;
          };
        };
      };
    }