{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lazyset"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "carlosfreund@googlemail.com";
      author = "Carlos Freund";
      homepage = "https://github.com/happyherp/lazyset";
      url = "";
      synopsis = "Set and Map from lazy/infinite lists.";
      description = "A Set and Map implementation that is completly lazy and works for infinite sets and maps.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."data-ordlist" or ((hsPkgs.pkgs-errors).buildDepError "data-ordlist"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "settest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-ordlist" or ((hsPkgs.pkgs-errors).buildDepError "data-ordlist"))
            ];
          buildable = true;
          };
        "maptest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-ordlist" or ((hsPkgs.pkgs-errors).buildDepError "data-ordlist"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-ordlist" or ((hsPkgs.pkgs-errors).buildDepError "data-ordlist"))
            (hsPkgs."timeit" or ((hsPkgs.pkgs-errors).buildDepError "timeit"))
            ];
          buildable = true;
          };
        };
      };
    }