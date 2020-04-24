{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "TypeClass"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jpmoresmau@gmail.com";
      author = "JP Moresmau";
      homepage = "";
      url = "";
      synopsis = "Typing speed game";
      description = "A simple game where you need to type the letters scrolling down the screen before they reach the bottom. Using SDL and SDL_ttf.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "TypeClass" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
            (hsPkgs."SDL-ttf" or ((hsPkgs.pkgs-errors).buildDepError "SDL-ttf"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."reactive-banana" or ((hsPkgs.pkgs-errors).buildDepError "reactive-banana"))
            (hsPkgs."reactive-banana-sdl" or ((hsPkgs.pkgs-errors).buildDepError "reactive-banana-sdl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }