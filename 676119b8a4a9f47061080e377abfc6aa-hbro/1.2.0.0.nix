{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      threaded = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hbro";
          version = "1.2.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "koral <koral at mailoo dot org>";
        author = "koral <koral at mailoo dot org>";
        homepage = "https://bitbucket.org/k0ral/hbro";
        url = "";
        synopsis = "Minimal KISS-compliant browser";
        description = "Cf README";
        buildType = "Simple";
      };
      components = {
        hbro = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.classy-prelude
            hsPkgs.cond
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.dyre
            hsPkgs.errors
            hsPkgs.glib
            hsPkgs.gtk3
            hsPkgs.hslogger
            hsPkgs.integer-simple
            hsPkgs.lens
            hsPkgs.lifted-async
            hsPkgs.lifted-base
            hsPkgs.mtl
            hsPkgs.monad-control
            hsPkgs.network-uri
            hsPkgs.pango
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.safe
            hsPkgs.semigroups
            hsPkgs.stm
            hsPkgs.system-fileio
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.unix
            hsPkgs.webkitgtk3
            hsPkgs.zeromq4-haskell
          ];
        };
        exes = {
          hbro = {
            depends  = [
              hsPkgs.hbro
              hsPkgs.base
            ];
          };
        };
      };
    }