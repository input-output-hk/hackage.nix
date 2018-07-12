{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "billeksah-pane";
          version = "1.0.0";
        };
        license = "LicenseRef-LGPL";
        copyright = "Juergen \"jutaro\" Nicklisch-Franken";
        maintainer = "maintainer@leksah.org";
        author = "Juergen \"jutaro\" Nicklisch-Franken";
        homepage = "http://www.leksah.org";
        url = "https://github.com/leksah";
        synopsis = "Leksah library";
        description = "General library used by leksah";
        buildType = "Simple";
      };
      components = {
        "billeksah-pane" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.gtk
            hsPkgs.glib
            hsPkgs.time
            hsPkgs.billeksah-services
          ];
        };
      };
    }