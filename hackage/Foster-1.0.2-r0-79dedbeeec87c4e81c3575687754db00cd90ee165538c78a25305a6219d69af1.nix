{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Foster"; version = "1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "notjefff@gmail.com";
      author = "Jefffrey";
      homepage = "";
      url = "";
      synopsis = "Utilities to generate and solve puzzles";
      description = "Utilities to generate and solve puzzles";
      buildType = "Simple";
      };
    components = {
      exes = {
        "foster" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."cmdtheline" or ((hsPkgs.pkgs-errors).buildDepError "cmdtheline"))
            (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "foster-benchmark" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."cmdtheline" or ((hsPkgs.pkgs-errors).buildDepError "cmdtheline"))
            (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }