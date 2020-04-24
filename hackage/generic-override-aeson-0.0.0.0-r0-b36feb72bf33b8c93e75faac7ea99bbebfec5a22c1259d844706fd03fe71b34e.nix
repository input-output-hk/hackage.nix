{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "generic-override-aeson"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Estatico Studios LLC";
      maintainer = "carymrobbins@gmail.com";
      author = "Cary Robbins";
      homepage = "https://github.com/estatico/generic-override#readme";
      url = "";
      synopsis = "Provides orphan instances necessary for integrating generic-override and aeson";
      description = "Please see the README on GitHub at <https://github.com/estatico/generic-override#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."generic-override" or ((hsPkgs.pkgs-errors).buildDepError "generic-override"))
          ];
        buildable = true;
        };
      tests = {
        "generic-override-aeson-test" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."generic-override" or ((hsPkgs.pkgs-errors).buildDepError "generic-override"))
            (hsPkgs."generic-override-aeson" or ((hsPkgs.pkgs-errors).buildDepError "generic-override-aeson"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }