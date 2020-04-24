{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "GeBoP"; version = "1.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maarten Löffler <loffler@cs.uu.nl>";
      author = "Maarten Löffler";
      homepage = "http://www.haskell.org/haskellwiki/GeBoP";
      url = "";
      synopsis = "Several games";
      description = "The games: Ataxx, Bamp, Halma, Hez, Kram, Nim, Reversi, TicTacToe, and Zenix";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gebop" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."wxcore" or ((hsPkgs.pkgs-errors).buildDepError "wxcore"))
            (hsPkgs."wx" or ((hsPkgs.pkgs-errors).buildDepError "wx"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }