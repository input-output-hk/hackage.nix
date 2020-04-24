{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "min-max-pqueue"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Ziyang Liu";
      maintainer = "Ziyang Liu <free@cofree.io>";
      author = "Ziyang Liu <free@cofree.io>";
      homepage = "https://github.com/zliu41/min-max-pqueue#readme";
      url = "";
      synopsis = "Double-ended priority queues.";
      description = "Min-max priority queues, also known as double-ended priority queues.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "hedgehog" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."min-max-pqueue" or ((hsPkgs.pkgs-errors).buildDepError "min-max-pqueue"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."integer-logarithms" or ((hsPkgs.pkgs-errors).buildDepError "integer-logarithms"))
            (hsPkgs."min-max-pqueue" or ((hsPkgs.pkgs-errors).buildDepError "min-max-pqueue"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }