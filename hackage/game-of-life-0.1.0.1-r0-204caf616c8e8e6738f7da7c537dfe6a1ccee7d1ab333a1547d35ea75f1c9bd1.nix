{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "game-of-life"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "marcusbuffett@me.com";
      author = "Marcus Buffett";
      homepage = "http://github.com/marcusbuffett/game-of-life";
      url = "";
      synopsis = "Conway's Game of Life";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "game-of-life" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."hscurses" or ((hsPkgs.pkgs-errors).buildDepError "hscurses"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }