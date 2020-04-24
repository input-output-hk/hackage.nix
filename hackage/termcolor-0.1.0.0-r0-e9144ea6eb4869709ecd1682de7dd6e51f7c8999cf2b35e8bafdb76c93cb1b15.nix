{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "termcolor"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2017 Mahdi Dibaiee";
      maintainer = "mahdi@theread.me";
      author = "Mahdi Dibaiee";
      homepage = "https://github.com/mdibaiee/termcolor#readme";
      url = "";
      synopsis = "Composable terminal colors";
      description = "Composable terminal colors";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "termcolor" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."termcolor" or ((hsPkgs.pkgs-errors).buildDepError "termcolor"))
            (hsPkgs."cli" or ((hsPkgs.pkgs-errors).buildDepError "cli"))
            ];
          buildable = true;
          };
        };
      };
    }