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
        name = "tn";
        version = "0.1.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "2014, Peter Harpending.";
      maintainer = "pharpend2@gmail.com";
      author = "Peter Harpending";
      homepage = "";
      url = "";
      synopsis = "A journaling program for Linux";
      description = "Extremely simple CLI-based program for keeping diaries or journals.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "tn" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.time)
          ];
        };
      };
    };
  }