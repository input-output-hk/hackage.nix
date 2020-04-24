{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "sdl2-ttf"; version = "0.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Sean Chalmers (sclhiannan@gmail.com)";
      author = "Ömer Sinan Ağacan (omeragacan@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Binding to libSDL2-ttf";
      description = "Haskell bindings to the sdl2-ttf C++ library <http://www.libsdl.org/projects/SDL_ttf/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
          ];
        libs = [
          (pkgs."SDL2" or ((hsPkgs.pkgs-errors).sysDepError "SDL2"))
          (pkgs."SDL2_ttf" or ((hsPkgs.pkgs-errors).sysDepError "SDL2_ttf"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            (hsPkgs."sdl2-ttf" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-ttf"))
            ];
          buildable = true;
          };
        };
      };
    }