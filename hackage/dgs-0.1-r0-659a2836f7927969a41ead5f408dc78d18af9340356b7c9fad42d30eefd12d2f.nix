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
      specVersion = "1.6";
      identifier = {
        name = "dgs";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel@wagner-home.com";
      author = "Daniel Wagner";
      homepage = "http://www.dmwit.com/dgs";
      url = "";
      synopsis = "Haskell front-end for DGS' bot interface";
      description = "The Dragon Go Server exposes a convenient interface for bots.  This module\nprovides some functions for accessing that interface to log in to the\nserver, retrieve your status page, retrieve the state of any games you are\nplaying, and make moves in games.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.HTTP)
          (hsPkgs.network)
          (hsPkgs.split)
        ];
      };
    };
  }