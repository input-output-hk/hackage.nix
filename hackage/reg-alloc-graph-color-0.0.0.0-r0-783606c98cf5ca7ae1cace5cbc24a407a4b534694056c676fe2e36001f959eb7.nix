{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "reg-alloc-graph-color"; version = "0.0.0.0"; };
      license = "MPL-2.0";
      copyright = "2019 M Farkas-Dyck";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Register allocation by graph colorization";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."private" or ((hsPkgs.pkgs-errors).buildDepError "private"))
          ];
        buildable = true;
        };
      sublibs = {
        "private" = {
          depends = [
            (hsPkgs."Map" or ((hsPkgs.pkgs-errors).buildDepError "Map"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."lenz" or ((hsPkgs.pkgs-errors).buildDepError "lenz"))
            (hsPkgs."lenz-mtl" or ((hsPkgs.pkgs-errors).buildDepError "lenz-mtl"))
            (hsPkgs."lenz-template" or ((hsPkgs.pkgs-errors).buildDepError "lenz-template"))
            (hsPkgs."microlens-mtl" or ((hsPkgs.pkgs-errors).buildDepError "microlens-mtl"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."peano" or ((hsPkgs.pkgs-errors).buildDepError "peano"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."util" or ((hsPkgs.pkgs-errors).buildDepError "util"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."logict" or ((hsPkgs.pkgs-errors).buildDepError "logict"))
            (hsPkgs."smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-smallcheck"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."util" or ((hsPkgs.pkgs-errors).buildDepError "util"))
            (hsPkgs."private" or ((hsPkgs.pkgs-errors).buildDepError "private"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."reg-alloc-graph-color" or ((hsPkgs.pkgs-errors).buildDepError "reg-alloc-graph-color"))
            ];
          buildable = true;
          };
        };
      };
    }