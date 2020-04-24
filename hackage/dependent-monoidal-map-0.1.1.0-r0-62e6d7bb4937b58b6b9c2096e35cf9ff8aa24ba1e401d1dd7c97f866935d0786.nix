{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dependent-monoidal-map"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Obsidian Systems LLC";
      maintainer = "maintainer@obsidian.systems";
      author = "Obsidian Systems LLC";
      homepage = "";
      url = "";
      synopsis = "Dependent map that uses semigroup mappend";
      description = "Data.Dependent.Map variant that appends conflicting entries when merging maps instead of discarding one side of the conflict.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."constraints-extras" or ((hsPkgs.pkgs-errors).buildDepError "constraints-extras"))
          (hsPkgs."dependent-map" or ((hsPkgs.pkgs-errors).buildDepError "dependent-map"))
          (hsPkgs."dependent-sum" or ((hsPkgs.pkgs-errors).buildDepError "dependent-sum"))
          (hsPkgs."dependent-sum-aeson-orphans" or ((hsPkgs.pkgs-errors).buildDepError "dependent-sum-aeson-orphans"))
          ];
        buildable = true;
        };
      };
    }