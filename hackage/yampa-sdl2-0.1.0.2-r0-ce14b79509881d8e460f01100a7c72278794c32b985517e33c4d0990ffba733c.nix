{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yampa-sdl2"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "2018 Simre";
      maintainer = "simre4775@gmail.com";
      author = "Simre";
      homepage = "https://github.com/Simre1/YampaSDL2#readme";
      url = "";
      synopsis = "Yampa and SDL2 made easy";
      description = "yampa-sdl2 lets you start coding your app right away instead of dealing with SDL2 first.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."StateVar" or ((hsPkgs.pkgs-errors).buildDepError "StateVar"))
          (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."data-memocombinators" or ((hsPkgs.pkgs-errors).buildDepError "data-memocombinators"))
          (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
          (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "YampaSDL2-test" = {
          depends = [
            (hsPkgs."StateVar" or ((hsPkgs.pkgs-errors).buildDepError "StateVar"))
            (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-memocombinators" or ((hsPkgs.pkgs-errors).buildDepError "data-memocombinators"))
            (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."yampa-sdl2" or ((hsPkgs.pkgs-errors).buildDepError "yampa-sdl2"))
            ];
          buildable = true;
          };
        };
      };
    }