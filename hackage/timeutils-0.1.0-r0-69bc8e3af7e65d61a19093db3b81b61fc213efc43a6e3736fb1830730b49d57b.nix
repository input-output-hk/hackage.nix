{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "timeutils"; version = "0.1.0"; };
      license = "GPL-3.0-only";
      copyright = "Jonathan Lamothe";
      maintainer = "jlamothe1980@gmail.com";
      author = "Jonathan Lamothe";
      homepage = "https://github.com/jlamothe/timeutils#readme";
      url = "";
      synopsis = "Time utilities";
      description = "Please see the README on GitHub at <https://github.com/jlamothe/timeutils#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "timeutils" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."brick" or ((hsPkgs.pkgs-errors).buildDepError "brick"))
            (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."timeutils" or ((hsPkgs.pkgs-errors).buildDepError "timeutils"))
            (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
            ];
          buildable = true;
          };
        };
      tests = {
        "timeutils-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."timeutils" or ((hsPkgs.pkgs-errors).buildDepError "timeutils"))
            ];
          buildable = true;
          };
        };
      };
    }