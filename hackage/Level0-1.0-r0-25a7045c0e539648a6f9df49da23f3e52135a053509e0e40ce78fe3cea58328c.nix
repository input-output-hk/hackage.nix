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
      specVersion = "1.8";
      identifier = {
        name = "Level0";
        version = "1.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "eleventynine@gmail.com";
      author = "Mike Ledger";
      homepage = "http://quasimal.com/projects/level_0.html";
      url = "";
      synopsis = "A Snake II clone written using SDL.";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Level0" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.SDL)
            (hsPkgs.SDL-ttf)
            (hsPkgs.random)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }