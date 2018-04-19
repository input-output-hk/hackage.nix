{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "lhae";
          version = "0.0.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Alexander Bau";
        author = "Alexander Bau";
        homepage = "http://www.imn.htwk-leipzig.de/~abau/lhae";
        url = "";
        synopsis = "Simple spreadsheet program";
        description = "lhae is a spreadsheet program. It features a simple formula language and some basic statistical methods.";
        buildType = "Custom";
      };
      components = {
        exes = {
          lhae = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.wx
              hsPkgs.wxcore
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.setlocale
              hsPkgs.hgettext
              hsPkgs.utf8-string
              hsPkgs.process
            ];
          };
        };
      };
    }