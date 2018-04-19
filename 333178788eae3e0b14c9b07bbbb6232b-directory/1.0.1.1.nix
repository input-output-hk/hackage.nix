{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "directory";
          version = "1.0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "library for directory handling";
        description = "This package provides a library for handling directories.";
        buildType = "Configure";
      };
      components = {
        directory = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-time
            hsPkgs.filepath
          ] ++ (if !compiler.isNhc98 && system.isWindows
            then [ hsPkgs.Win32 ]
            else [ hsPkgs.unix ]);
        };
      };
    }