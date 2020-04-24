{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hoodie"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "denis.volk@gmail.com";
      author = "Denis Volk";
      homepage = "";
      url = "";
      synopsis = "A small, toy roguelike";
      description = "A small roguelike; perhaps 10% of a real one. In development";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hoodie" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
            (hsPkgs."astar" or ((hsPkgs.pkgs-errors).buildDepError "astar"))
            (hsPkgs."ncurses" or ((hsPkgs.pkgs-errors).buildDepError "ncurses"))
            (hsPkgs."hfov" or ((hsPkgs.pkgs-errors).buildDepError "hfov"))
            ];
          buildable = true;
          };
        };
      };
    }