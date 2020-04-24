{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rings"; version = "0.0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chris.mckinlay@gmail.com";
      author = "Chris McKinlay";
      homepage = "https://github.com/cmk/rings";
      url = "";
      synopsis = "Rings, semirings, and dioids.";
      description = "Lawful versions of several of the numeric typeclasses in base.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."semigroupoids" or ((hsPkgs.pkgs-errors).buildDepError "semigroupoids"))
          (hsPkgs."property" or ((hsPkgs.pkgs-errors).buildDepError "property"))
          (hsPkgs."connections" or ((hsPkgs.pkgs-errors).buildDepError "connections"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."connections" or ((hsPkgs.pkgs-errors).buildDepError "connections"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."property" or ((hsPkgs.pkgs-errors).buildDepError "property"))
            (hsPkgs."rings" or ((hsPkgs.pkgs-errors).buildDepError "rings"))
            ];
          buildable = true;
          };
        };
      };
    }