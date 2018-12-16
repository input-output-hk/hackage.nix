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
        name = "Titim";
        version = "0.1.3";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "notjefff@gmail.com";
      author = "Jefffrey";
      homepage = "";
      url = "";
      synopsis = "Game for Lounge Marmelade";
      description = "Game for Lounge Marmelade";
      buildType = "Simple";
    };
    components = {
      exes = {
        "titim" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.vector)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }