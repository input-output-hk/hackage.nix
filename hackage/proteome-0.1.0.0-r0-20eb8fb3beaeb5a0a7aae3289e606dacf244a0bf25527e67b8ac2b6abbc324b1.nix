{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "proteome";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2018 Torsten Schmits";
      maintainer = "tek@tryp.io";
      author = "Torsten Schmits";
      homepage = "";
      url = "";
      synopsis = "neovim project manager";
      description = "neovim plugin for managing project-specific configuration and performing runtime tasks on projects";
      buildType = "Simple";
    };
    components = {
      exes = {
        "proteome" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.nvim-hs)
          ];
        };
      };
    };
  }