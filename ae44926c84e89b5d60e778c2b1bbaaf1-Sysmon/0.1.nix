{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Sysmon";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "virukav@gmail.com";
        author = "Vitaliy Rukavishnikov";
        homepage = "http://github.com/rukav/Sysmon";
        url = "";
        synopsis = "Sybase 15 sysmon reports processor";
        description = "A library for processing Sysbase 15 sysmon reports.";
        buildType = "Simple";
      };
      components = {
        "Sysmon" = {
          depends  = [
            hsPkgs.base
            hsPkgs.Glob
            hsPkgs.ConfigFile
            hsPkgs.datetime
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