{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hbro";
          version = "0.6.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "koral at mailoo dot org";
        author = "koral";
        homepage = "http://projects.haskell.org/hbro/";
        url = "";
        synopsis = "A suckless minimal KISSy browser";
        description = "";
        buildType = "Simple";
      };
      components = {
        hbro = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cmdargs
            hsPkgs.containers
            hsPkgs.dyre
            hsPkgs.glib
            hsPkgs.gtk
            hsPkgs.mtl
            hsPkgs.pango
            hsPkgs.process
            hsPkgs.url
            hsPkgs.webkit
            hsPkgs.unix
            hsPkgs.zeromq-haskell
          ];
        };
        exes = {
          hbro = {
            depends  = [
              hsPkgs.hbro
              hsPkgs.base
              hsPkgs.glib
              hsPkgs.gtk
              hsPkgs.mtl
              hsPkgs.pango
              hsPkgs.process
              hsPkgs.unix
              hsPkgs.webkit
            ];
          };
        };
      };
    }