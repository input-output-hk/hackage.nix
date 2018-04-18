{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Sysmon";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "virukav@gmail.com";
        author = "Vitaliy Rukavishnikov";
        homepage = "http://github.com/rukav/Sysmon";
        url = "";
        synopsis = "Sybase 15 sysmon reports processor";
        description = "A library for processing Sybase 15 sysmon reports.\n\nThe library provides an interface to parse sysmon reports, to query the data,\nto aggregate the multiple sysmon reports, to generate the optimization hints.\nThe hints parameters can be configured.\n\nSee the Database.Sybase.Sysmon.Log package for the exported functions and\nSample.hs for the\nusage example.";
        buildType = "Simple";
      };
      components = {
        Sysmon = {
          depends  = [
            hsPkgs.base
            hsPkgs.Glob
            hsPkgs.ConfigFile
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.fingertree
            hsPkgs.pretty
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.template-haskell
            hsPkgs.MissingH
            hsPkgs.vector
            hsPkgs.statistics
          ];
        };
      };
    }