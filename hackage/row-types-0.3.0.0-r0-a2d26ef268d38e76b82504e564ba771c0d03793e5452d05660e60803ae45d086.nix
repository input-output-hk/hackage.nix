{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "row-types"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "daniel.winograd-cort@target.com, matthew.farkas-dyck@target.com";
      author = "Daniel Winograd-Cort, Matthew Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Open Records and Variants";
      description = "This package uses closed type families and type literals to implement open\nrecords and variants.\nThe core is based off of the <https://hackage.haskell.org/package/CTRex CTRex>\npackage, but it additionally includes polymorphic variants and a number of\nadditional functions.  That said, it is not a proper superset of CTRex as it\nspecifically forbids records from having more than one element of the same\nlabel.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."generic-lens" or ((hsPkgs.pkgs-errors).buildDepError "generic-lens"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."generic-lens" or ((hsPkgs.pkgs-errors).buildDepError "generic-lens"))
            (hsPkgs."row-types" or ((hsPkgs.pkgs-errors).buildDepError "row-types"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "perf" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."row-types" or ((hsPkgs.pkgs-errors).buildDepError "row-types"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }