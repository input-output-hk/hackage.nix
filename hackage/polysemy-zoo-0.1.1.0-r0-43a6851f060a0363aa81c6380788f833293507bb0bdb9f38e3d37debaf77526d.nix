{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "polysemy-zoo"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Sandy Maguire";
      maintainer = "sandy@sandymaguire.me";
      author = "Sandy Maguire";
      homepage = "https://github.com/isovector/polysemy-zoo#readme";
      url = "";
      synopsis = "Experimental, user-contributed effects and interpreters for polysemy";
      description = "Please see the README on GitHub at <https://github.com/isovector/polysemy-zoo#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."polysemy" or ((hsPkgs.pkgs-errors).buildDepError "polysemy"))
          (hsPkgs."polysemy-plugin" or ((hsPkgs.pkgs-errors).buildDepError "polysemy-plugin"))
          ];
        buildable = true;
        };
      tests = {
        "polysemy-zoo-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."polysemy" or ((hsPkgs.pkgs-errors).buildDepError "polysemy"))
            (hsPkgs."polysemy-plugin" or ((hsPkgs.pkgs-errors).buildDepError "polysemy-plugin"))
            (hsPkgs."polysemy-zoo" or ((hsPkgs.pkgs-errors).buildDepError "polysemy-zoo"))
            ];
          buildable = true;
          };
        };
      };
    }