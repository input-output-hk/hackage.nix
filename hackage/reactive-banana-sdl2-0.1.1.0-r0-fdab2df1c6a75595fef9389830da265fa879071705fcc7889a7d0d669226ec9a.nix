{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "reactive-banana-sdl2"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "GPL-3";
      maintainer = "cies.breijs@gmail.com";
      author = "R. Kyle Murphy, JP Moresmau";
      homepage = "http://github.com/cies/reactive-banana-sdl2#readme";
      url = "";
      synopsis = "Reactive Banana integration with SDL2";
      description = "Provides bindings and convenience functions for using Reactive Banana with SDL2.\nPlease see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."reactive-banana" or ((hsPkgs.pkgs-errors).buildDepError "reactive-banana"))
          (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
          ];
        buildable = true;
        };
      tests = {
        "reactive-banana-sdl2-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."reactive-banana-sdl2" or ((hsPkgs.pkgs-errors).buildDepError "reactive-banana-sdl2"))
            ];
          buildable = true;
          };
        };
      };
    }