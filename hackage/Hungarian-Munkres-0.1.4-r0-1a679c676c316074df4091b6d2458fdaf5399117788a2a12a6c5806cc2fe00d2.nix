{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Hungarian-Munkres"; version = "0.1.4"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2014 Kai Zhang";
      maintainer = "Kai Zhang <kai@kzhang.org>";
      author = "Kai Zhang <kai@kzhang.org>";
      homepage = "";
      url = "";
      synopsis = "A Linear Sum Assignment Problem (LSAP) solver";
      description = "This library provide a Haskell binding to the libhungarian,\na solver for Linear Sum Assignment Problem (LSAP) implemented\nin C language. It uses Hungarian algorithm\n<http://en.wikipedia.org/wiki/Hungarian_algorithm>, and runs\nin O(n^3) time. This implementation is efficient. Benchmarks\nversus pure haskell implementation are included (run\n\"cabal bench\").";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."Hungarian-Munkres" or ((hsPkgs.pkgs-errors).buildDepError "Hungarian-Munkres"))
            (hsPkgs."Munkres" or ((hsPkgs.pkgs-errors).buildDepError "Munkres"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."Hungarian-Munkres" or ((hsPkgs.pkgs-errors).buildDepError "Hungarian-Munkres"))
            (hsPkgs."Munkres" or ((hsPkgs.pkgs-errors).buildDepError "Munkres"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }