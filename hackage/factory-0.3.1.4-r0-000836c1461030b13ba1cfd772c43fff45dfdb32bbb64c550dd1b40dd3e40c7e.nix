{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { llvm = false; threaded = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "factory"; version = "0.3.1.4"; };
      license = "LicenseRef-GPL";
      copyright = "(C) 2011-2015 Dr. Alistair Ward";
      maintainer = "mailto:factory@functionalley.eu";
      author = "Dr. Alistair Ward";
      homepage = "http://functionalley.eu/Factory/factory.html";
      url = "";
      synopsis = "Rational arithmetic in an irrational world.";
      description = "A library of number-theory functions, for; factorials, square-roots, Pi and primes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."primes" or ((hsPkgs.pkgs-errors).buildDepError "primes"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."toolshed" or ((hsPkgs.pkgs-errors).buildDepError "toolshed"))
          ];
        buildable = true;
        };
      exes = {
        "factory" = {
          depends = [
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."factory" or ((hsPkgs.pkgs-errors).buildDepError "factory"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."toolshed" or ((hsPkgs.pkgs-errors).buildDepError "toolshed"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."factory" or ((hsPkgs.pkgs-errors).buildDepError "factory"))
            (hsPkgs."primes" or ((hsPkgs.pkgs-errors).buildDepError "primes"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."toolshed" or ((hsPkgs.pkgs-errors).buildDepError "toolshed"))
            ];
          buildable = true;
          };
        };
      };
    }