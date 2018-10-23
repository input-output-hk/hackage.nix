{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tempus-fugit";
        version = "0.1.0.1";
      };
      license = "AGPL-3.0-only";
      copyright = "2015 Joshua Simmons";
      maintainer = "joshua.simmons@emptypath.com";
      author = "Joshua Simmons";
      homepage = "http://github.com/kadoban/tempus-fugit";
      url = "";
      synopsis = "Programmers' time tracker";
      description = "Track time spent on projects.";
      buildType = "Simple";
    };
    components = {
      "tempus-fugit" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "tempus" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tempus-fugit)
          ];
        };
      };
      tests = {
        "tempus-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tempus-fugit)
          ];
        };
      };
    };
  }