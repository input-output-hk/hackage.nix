{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pcg-random"; version = "0.1.3.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2015. Christopher Chalmers <c.chalmers@me.com>";
      maintainer = "c.chalmers@me.com";
      author = "Christopher Chalmers";
      homepage = "http://github.com/cchalmers/pcg-random";
      url = "";
      synopsis = "Haskell bindings to the PCG random number generator.";
      description = "PCG is a family of simple fast space-efficient statistically good\nalgorithms for random number generation. Unlike many general-purpose\nRNGs, they are also hard to predict.\n\nThis library implements bindings to the standard C implementation.\nThis includes the standard, unique, fast and single variants in the\npcg family. There is a pure implementation that can be used as a\ngenerator with the random package as well as a faster primitive api\nthat includes functions for generating common types.\n\nThe generators in this module are suitable for use in parallel but\nmake sure threads don't share the same generator or things will go\nhorribly wrong.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."entropy" or ((hsPkgs.pkgs-errors).buildDepError "entropy"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }