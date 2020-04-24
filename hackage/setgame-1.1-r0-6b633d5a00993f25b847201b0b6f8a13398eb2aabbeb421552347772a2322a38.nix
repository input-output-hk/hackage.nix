{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "setgame"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "emertens@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A console interface to the game of Set";
      description = "A console interface to the game of Set";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
          ];
        buildable = true;
        };
      exes = {
        "set-game" = {
          depends = [
            (hsPkgs."setgame" or ((hsPkgs.pkgs-errors).buildDepError "setgame"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }