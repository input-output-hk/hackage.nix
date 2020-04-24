{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { demo = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "gridland"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "https://github.com/jxv";
      author = "Joe Vargas";
      homepage = "";
      url = "";
      synopsis = "Grid-based multimedia engine";
      description = "Learn Haskell by drawing sprites and playing music and sound effects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
          (hsPkgs."SDL-image" or ((hsPkgs.pkgs-errors).buildDepError "SDL-image"))
          (hsPkgs."SDL-mixer" or ((hsPkgs.pkgs-errors).buildDepError "SDL-mixer"))
          (hsPkgs."SDL-gfx" or ((hsPkgs.pkgs-errors).buildDepError "SDL-gfx"))
          (hsPkgs."astar" or ((hsPkgs.pkgs-errors).buildDepError "astar"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."tuple" or ((hsPkgs.pkgs-errors).buildDepError "tuple"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."grid" or ((hsPkgs.pkgs-errors).buildDepError "grid"))
          (hsPkgs."htiled" or ((hsPkgs.pkgs-errors).buildDepError "htiled"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          ];
        buildable = true;
        };
      exes = {
        "demo" = {
          depends = (pkgs.lib).optionals (flags.demo) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gridland" or ((hsPkgs.pkgs-errors).buildDepError "gridland"))
            ];
          buildable = if flags.demo then true else false;
          };
        };
      };
    }