{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "DataVersion"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Sandy Maguire, James King";
      maintainer = "james@agentultra.com";
      author = "Sandy Maguire, James King";
      homepage = "https://github.com/agentultra/DataMigration#readme";
      url = "";
      synopsis = "Type safe data migrations";
      description = "Please see the README on GitHub at <https://github.com/agentultra/DataMigration#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."generic-lens" or ((hsPkgs.pkgs-errors).buildDepError "generic-lens"))
          (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
          ];
        buildable = true;
        };
      tests = {
        "DataVersion-test" = {
          depends = [
            (hsPkgs."DataVersion" or ((hsPkgs.pkgs-errors).buildDepError "DataVersion"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }