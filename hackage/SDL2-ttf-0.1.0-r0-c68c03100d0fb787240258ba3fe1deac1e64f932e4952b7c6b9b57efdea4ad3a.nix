{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "SDL2-ttf"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ömer Sinan Ağacan (omeragacan@gmail.com)";
      author = "Ömer Sinan Ağacan (omeragacan@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Binding to libSDL-ttf";
      description = "TODO";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."SDL2" or ((hsPkgs.pkgs-errors).buildDepError "SDL2"))
          ];
        libs = [
          (pkgs."SDL2" or ((hsPkgs.pkgs-errors).sysDepError "SDL2"))
          (pkgs."SDL2_ttf" or ((hsPkgs.pkgs-errors).sysDepError "SDL2_ttf"))
          ];
        buildable = true;
        };
      };
    }