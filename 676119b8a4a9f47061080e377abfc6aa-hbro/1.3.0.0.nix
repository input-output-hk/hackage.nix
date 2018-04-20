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
          version = "1.3.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "koral <koral at mailoo dot org>";
        author = "koral <koral at mailoo dot org>";
        homepage = "https://github.com/k0ral/hbro";
        url = "";
        synopsis = "Minimal extensible web-browser";
        description = "Cf README";
        buildType = "Simple";
      };
      components = {
        hbro = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.classy-prelude
            hsPkgs.cond
            hsPkgs.containers
            hsPkgs.data-default-class
            hsPkgs.dyre
            hsPkgs.errors
            hsPkgs.fast-logger
            hsPkgs.glib
            hsPkgs.gtk3
            hsPkgs.lens
            hsPkgs.lifted-async
            hsPkgs.lifted-base
            hsPkgs.mtl
            hsPkgs.monad-control
            hsPkgs.monad-logger
            hsPkgs.network-uri
            hsPkgs.optparse-applicative
            hsPkgs.pango
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.resourcet
            hsPkgs.safe
            hsPkgs.semigroups
            hsPkgs.stm-chans
            hsPkgs.system-fileio
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.unix
            hsPkgs.webkitgtk3
            hsPkgs.zeromq4-haskell
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.integer-simple;
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