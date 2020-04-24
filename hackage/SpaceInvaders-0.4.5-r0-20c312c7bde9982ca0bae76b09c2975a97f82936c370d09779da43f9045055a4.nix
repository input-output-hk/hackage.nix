{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "SpaceInvaders"; version = "0.4.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ivan Perez <ivan.perez@keera.co.uk>";
      author = "Henrik Nilsson, Antony Courtney";
      homepage = "http://www.haskell.org/yampa/";
      url = "";
      synopsis = "Video game";
      description = "Video game implemented in Yampa.\n<<https://github.com/ivanperez-keera/SpaceInvaders/blob/develop/screenshots/gameplay.gif?raw=true>>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "spaceInvaders" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."HGL" or ((hsPkgs.pkgs-errors).buildDepError "HGL"))
            (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
            ];
          buildable = true;
          };
        };
      };
    }