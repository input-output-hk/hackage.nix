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
          version = "1.1.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "koral at mailoo dot org";
        author = "koral";
        homepage = "http://projects.haskell.org/hbro/";
        url = "";
        synopsis = "Minimal KISS compliant browser";
        description = "";
        buildType = "Simple";
      };
      components = {
        hbro = {
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
            hsPkgs.zeromq3-haskell
          ];
        };
        exes = {
          hbro = {
            depends  = [
              hsPkgs.hbro
              hsPkgs.base
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.glib
              hsPkgs.gtk
              hsPkgs.lens
              hsPkgs.mtl
            ];
          };
        };
      };
    }