{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sdl2-image"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "cailei@live.com";
      author = "Cai Lei";
      homepage = "";
      url = "";
      synopsis = "Haskell binding to sdl2-image.";
      description = "Haskell binding to sdl2-image.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
          ];
        libs = [ (pkgs."sdl2" or ((hsPkgs.pkgs-errors).sysDepError "sdl2")) ];
        pkgconfig = [
          (pkgconfPkgs."sdl2" or ((hsPkgs.pkgs-errors).pkgConfDepError "sdl2"))
          (pkgconfPkgs."SDL2_image" or ((hsPkgs.pkgs-errors).pkgConfDepError "SDL2_image"))
          ];
        buildable = true;
        };
      };
    }