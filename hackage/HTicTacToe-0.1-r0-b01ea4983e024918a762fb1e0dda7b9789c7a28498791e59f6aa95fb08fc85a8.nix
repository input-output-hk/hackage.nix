{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "HTicTacToe"; version = "0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "korcan_h@hotmail.com";
      author = "Korcan Hussein";
      homepage = "http://github.com/snkkid/HTicTacToe";
      url = "";
      synopsis = "A tic-tac-toe game.";
      description = "Another tic-tac-toe game in Haskell using the SDL bindings.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "HTicTacToe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
            (hsPkgs."SDL-image" or ((hsPkgs.pkgs-errors).buildDepError "SDL-image"))
            (hsPkgs."SDL-ttf" or ((hsPkgs.pkgs-errors).buildDepError "SDL-ttf"))
            ];
          buildable = true;
          };
        };
      };
    }