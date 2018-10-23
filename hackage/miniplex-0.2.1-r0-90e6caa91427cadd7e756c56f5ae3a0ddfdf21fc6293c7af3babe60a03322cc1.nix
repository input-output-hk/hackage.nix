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
        name = "miniplex";
        version = "0.2.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Lukas Mai <l.mai@web.de>";
      author = "Lukas Mai";
      homepage = "";
      url = "";
      synopsis = "simple 1-to-N interprocess communication";
      description = "This module provides interprocess communication channels. This is meant\nto be used by logger-like programs that want to send status reports to\nN listeners (where N >= 0).";
      buildType = "Custom";
    };
    components = {
      "miniplex" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.stm)
          (hsPkgs.unix)
          (hsPkgs.mtl)
        ];
      };
      exes = {
        "plox-read" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.stm)
            (hsPkgs.unix)
            (hsPkgs.mtl)
          ];
        };
        "plox-write" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.stm)
            (hsPkgs.unix)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }