{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "cabal-test"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2006-2007, Lemmih";
      maintainer = "Lemmih (lemmih@gmail.com)";
      author = "Lemmih (lemmih@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Automated test tool for cabal projects.";
      description = "Cabal-test is a tool for testing cabal projects. It uses the GHC-api to load the code so any\ncode currently buildable by GHCi should be testable by cabal-test.\nYou can choose how many tests to run and how many to run concurrently.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "cabal-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."pqc" or ((hsPkgs.pkgs-errors).buildDepError "pqc"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            ];
          buildable = true;
          };
        };
      };
    }