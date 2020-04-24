{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "refractor"; version = "0.0.1.0"; };
      license = "MPL-2.0";
      copyright = "2020 M Farkas-Dyck";
      maintainer = "None";
      author = "M Farkas-Dyck";
      homepage = "https://github.com/strake/refractor.hs";
      url = "";
      synopsis = "See README for more info";
      description = "See README for more info";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
          (hsPkgs."category" or ((hsPkgs.pkgs-errors).buildDepError "category"))
          (hsPkgs."hs-functors" or ((hsPkgs.pkgs-errors).buildDepError "hs-functors"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
            (hsPkgs."category" or ((hsPkgs.pkgs-errors).buildDepError "category"))
            (hsPkgs."hs-functors" or ((hsPkgs.pkgs-errors).buildDepError "hs-functors"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."refractor" or ((hsPkgs.pkgs-errors).buildDepError "refractor"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
            (hsPkgs."category" or ((hsPkgs.pkgs-errors).buildDepError "category"))
            (hsPkgs."hs-functors" or ((hsPkgs.pkgs-errors).buildDepError "hs-functors"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."gauge" or ((hsPkgs.pkgs-errors).buildDepError "gauge"))
            (hsPkgs."refractor" or ((hsPkgs.pkgs-errors).buildDepError "refractor"))
            ];
          buildable = true;
          };
        };
      };
    }