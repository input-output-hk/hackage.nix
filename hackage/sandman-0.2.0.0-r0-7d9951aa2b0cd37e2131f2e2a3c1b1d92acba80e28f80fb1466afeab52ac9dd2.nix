{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sandman"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "(c) 2015 Abhinav Gupta";
      maintainer = "mail@abhinavg.net";
      author = "Abhinav Gupta";
      homepage = "https://github.com/abhinav/sandman";
      url = "";
      synopsis = "Manages Cabal sandboxes to avoid rebuilding packages.";
      description = "sandman aims to reduce the amount of time spent rebuilding commonly used\nHackage packages by managing a global set of Cabal sandboxes that can be\nmixed into any project's Cabal sandbox.\n\nFor more information, check the\n<https://github.com/abhinav/sandman/blob/master/README.md README>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sandman" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unix-compat" or ((hsPkgs.pkgs-errors).buildDepError "unix-compat"))
            ];
          buildable = true;
          };
        };
      };
    }