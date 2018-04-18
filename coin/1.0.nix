{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.16";
        identifier = {
          name = "coin";
          version = "1.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Piotr Borek <piotrborek@op.pl>";
        author = "Piotr Borek <piotrborek@op.pl>";
        homepage = "https://bitbucket.org/borekpiotr/coin";
        url = "";
        synopsis = "Simple account manager";
        description = "Simple account manager";
        buildType = "Simple";
      };
      components = {
        exes = {
          coin = {
            depends  = [
              hsPkgs.base
              hsPkgs.glib
              hsPkgs.gtk3
              hsPkgs.directory
              hsPkgs.setlocale
              hsPkgs.hgettext
              hsPkgs.filepath
              hsPkgs.containers
              hsPkgs.hgettext
              hsPkgs.binary
              hsPkgs.directory
              hsPkgs.persistent
              hsPkgs.persistent-template
              hsPkgs.persistent-sqlite
              hsPkgs.transformers
              hsPkgs.text
              hsPkgs.monad-control
              hsPkgs.monad-logger
              hsPkgs.resourcet
              hsPkgs.time
              hsPkgs.mtl
              hsPkgs.lens-simple
              hsPkgs.aeson
              hsPkgs.bytestring
            ];
          };
        };
      };
    }