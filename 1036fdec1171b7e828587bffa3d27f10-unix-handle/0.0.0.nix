{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "unix-handle";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2010, Anders Kaseorg";
        maintainer = "andersk@mit.edu";
        author = "Anders Kaseorg <andersk@mit.edu>";
        homepage = "";
        url = "";
        synopsis = "POSIX operations on Handles";
        description = "This package provides versions of functions from\n\"System.Posix.Files\" that operate on 'System.IO.Handle' instead of\n'System.IO.FilePath' or 'System.Posix.Fd'.  This is useful to\nprevent race conditions that may arise from looking up the same path\ntwice.";
        buildType = "Simple";
      };
      components = {
        unix-handle = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
          ];
        };
      };
    }