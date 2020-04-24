{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "mancala"; version = "0.1"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "julianalucenaa@gmail.com and fltiago@gmail.com";
      author = "Juliana Lucena and Tiago Lima";
      homepage = "https://github.com/julianalucena/mancala";
      url = "";
      synopsis = "Simple mancala game.";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mancala" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }