{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "reactive-banana-sdl"; version = "0.2.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jpmoresmau@gmail.com";
      author = "R. Kyle Murphy, JP Moresmau";
      homepage = "https://github.com/JPMoresmau/reactive-banana-sdl";
      url = "";
      synopsis = "Reactive Banana bindings for SDL";
      description = "Provides bindings and convenience functions for using reactive banana with SDL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."reactive-banana" or ((hsPkgs.pkgs-errors).buildDepError "reactive-banana"))
          (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
          (hsPkgs."SDL-ttf" or ((hsPkgs.pkgs-errors).buildDepError "SDL-ttf"))
          (hsPkgs."data-lens" or ((hsPkgs.pkgs-errors).buildDepError "data-lens"))
          (hsPkgs."data-lens-template" or ((hsPkgs.pkgs-errors).buildDepError "data-lens-template"))
          (hsPkgs."SDL-image" or ((hsPkgs.pkgs-errors).buildDepError "SDL-image"))
          ];
        buildable = true;
        };
      };
    }