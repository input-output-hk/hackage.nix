{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "uni-htk";
          version = "2.2.1.3";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "chr.maeder@web.de";
        author = "uniform@informatik.uni-bremen.de";
        homepage = "http://www.informatik.uni-bremen.de/htk/";
        url = "";
        synopsis = "Graphical User Interface for Haskell Programs";
        description = "GUI toolkit based on Tcl\\/Tk";
        buildType = "Simple";
      };
      components = {
        uni-htk = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.uni-util
            hsPkgs.uni-events
            hsPkgs.uni-posixutil
            hsPkgs.uni-reactor
          ];
        };
      };
    }