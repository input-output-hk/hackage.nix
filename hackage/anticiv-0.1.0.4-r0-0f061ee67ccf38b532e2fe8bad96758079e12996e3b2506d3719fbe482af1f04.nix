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
        name = "anticiv";
        version = "0.1.0.4";
      };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "m@doomanddarkness.eu";
      author = "Marvin Cohrs";
      homepage = "";
      url = "";
      synopsis = "This is an IRC bot for Mafia and Resistance.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.chatty)
          (hsPkgs.chatty-utils)
          (hsPkgs.chatty-text)
          (hsPkgs.transformers)
          (hsPkgs.antisplice)
          (hsPkgs.network)
          (hsPkgs.mtl)
          (hsPkgs.ironforge)
          (hsPkgs.time)
          (hsPkgs.plugins)
          (hsPkgs.ctpl)
        ];
      };
      exes = {
        "anticiv" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.chatty)
            (hsPkgs.chatty-utils)
            (hsPkgs.chatty-text)
            (hsPkgs.transformers)
            (hsPkgs.antisplice)
            (hsPkgs.network)
            (hsPkgs.mtl)
            (hsPkgs.ironforge)
            (hsPkgs.time)
            (hsPkgs.plugins)
            (hsPkgs.directory)
            (hsPkgs.ctpl)
          ];
        };
      };
    };
  }