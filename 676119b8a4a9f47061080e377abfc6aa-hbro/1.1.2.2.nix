{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      threaded = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hbro";
          version = "1.1.2.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "koral <koral at mailoo dot org>";
        author = "koral <koral at mailoo dot org>";
        homepage = "http://projects.haskell.org/hbro/";
        url = "";
        synopsis = "Minimal KISS compliant browser";
        description = "";
        buildType = "Simple";
      };
      components = {
        "hbro" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cond
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.dyre
            hsPkgs.filepath
            hsPkgs.glib
            hsPkgs.gtk
            hsPkgs.lens
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.pango
            hsPkgs.process
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.unix
            hsPkgs.webkit
            hsPkgs.xdg-basedir
            hsPkgs.zeromq4-haskell
          ];
        };
        exes = {
          "hbro" = {
            depends  = [
              hsPkgs.hbro
              hsPkgs.base
              hsPkgs.glib
              hsPkgs.gtk
            ];
          };
        };
      };
    }