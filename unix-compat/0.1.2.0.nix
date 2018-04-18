{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2.1";
        identifier = {
          name = "unix-compat";
          version = "0.1.2.0";
        };
        license = "BSD-4-Clause";
        copyright = "";
        maintainer = "bjorn@bringert.net";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Portable POSIX-compatibility layer.";
        description = "This package provides portable implementations of parts\nof the unix package. This package re-exports the unix\npackage when available. When it isn't available,\nportable implementations are used.";
        buildType = "Simple";
      };
      components = {
        unix-compat = {
          depends  = [
            hsPkgs.base
          ] ++ (if system.isWindows
            then if _flags.split-base
              then [
                hsPkgs.base
                hsPkgs.old-time
                hsPkgs.directory
              ]
              else [ hsPkgs.base ]
            else [ hsPkgs.unix ]);
        };
      };
    }