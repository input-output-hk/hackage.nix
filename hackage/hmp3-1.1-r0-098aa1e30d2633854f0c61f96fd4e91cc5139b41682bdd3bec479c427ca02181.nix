{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "hmp3";
        version = "1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dons@cse.unsw.edu.au";
      author = "Don Stewart";
      homepage = "";
      url = "";
      synopsis = "";
      description = "";
      buildType = "Custom";
    };
    components = {
      exes = {
        "hmp3" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.fps)
          ];
          libs = [ (pkgs."curses") ];
        };
      };
    };
  }