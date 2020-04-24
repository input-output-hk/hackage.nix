{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "usa-holidays"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2019 Kyung Mo Kweon";
      maintainer = "kkweon@gmail.com";
      author = "Kyung Mo Kweon";
      homepage = "https://github.com/kkweon/usa-holidays#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/kkweon/usa-holidays#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "usa-holidays-dodctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."doctest-discover" or ((hsPkgs.pkgs-errors).buildDepError "doctest-discover"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."usa-holidays" or ((hsPkgs.pkgs-errors).buildDepError "usa-holidays"))
            ];
          buildable = true;
          };
        "usa-holidays-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."usa-holidays" or ((hsPkgs.pkgs-errors).buildDepError "usa-holidays"))
            ];
          buildable = true;
          };
        };
      };
    }