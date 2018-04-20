{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "directory";
          version = "1.2.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Platform-agnostic library for filesystem operations";
        description = "This library provides a basic set of operations for manipulating files and\ndirectories in a portable way.";
        buildType = "Configure";
      };
      components = {
        directory = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.time
            hsPkgs.filepath
          ] ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [ hsPkgs.unix ]);
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.time
            ] ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [ hsPkgs.unix ]);
          };
        };
      };
    }