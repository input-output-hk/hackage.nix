{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rowdy-yesod"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Matt Parsons";
      maintainer = "parsonsmatt@gmail.com";
      author = "Matt Parsons";
      homepage = "https://github.com/parsonsmatt/rowdy#readme";
      url = "";
      synopsis = "An EDSL for web application routes.";
      description = "Please see the README on Github at <https://github.com/parsonsmatt/rowdy#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."rowdy" or ((hsPkgs.pkgs-errors).buildDepError "rowdy"))
          (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
          ];
        buildable = true;
        };
      tests = {
        "specs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."rowdy" or ((hsPkgs.pkgs-errors).buildDepError "rowdy"))
            (hsPkgs."rowdy-yesod" or ((hsPkgs.pkgs-errors).buildDepError "rowdy-yesod"))
            (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
            ];
          buildable = true;
          };
        };
      };
    }