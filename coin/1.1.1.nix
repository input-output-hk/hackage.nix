{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      debug-db = false;
    } // flags;
    in {
      package = {
        specVersion = "1.16";
        identifier = {
          name = "coin";
          version = "1.1.1";
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
              hsPkgs.filepath
              hsPkgs.containers
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
              hsPkgs.lens
              hsPkgs.aeson
              hsPkgs.bytestring
            ] ++ pkgs.lib.optional system.isWindows hsPkgs.Win32;
          };
        };
      };
    }