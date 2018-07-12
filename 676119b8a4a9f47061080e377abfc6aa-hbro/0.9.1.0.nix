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
          version = "0.9.1.0";
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
        "hbro" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cmdargs
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.dyre
            hsPkgs.filepath
            hsPkgs.glib
            hsPkgs.gtk
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.pango
            hsPkgs.process
            hsPkgs.transformers
            hsPkgs.unix
            hsPkgs.webkit
            hsPkgs.xdg-basedir
            hsPkgs.zeromq-haskell
          ];
        };
        exes = {
          "hbro" = {
            depends  = [
              hsPkgs.hbro
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.mtl
            ];
          };
        };
      };
    }