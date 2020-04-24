{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sdl2"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2013, 2014  Gabríel Arthúr Pétursson";
      maintainer = "gabriel@system.is";
      author = "Gabríel Arthúr Pétursson";
      homepage = "";
      url = "";
      synopsis = "Bindings to SDL2";
      description = "Bindings to the SDL2 library, version 2.0.1.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = [ (pkgs."SDL2" or ((hsPkgs.pkgs-errors).sysDepError "SDL2")) ];
        pkgconfig = [
          (pkgconfPkgs."sdl2" or ((hsPkgs.pkgs-errors).pkgConfDepError "sdl2"))
          ];
        buildable = true;
        };
      };
    }