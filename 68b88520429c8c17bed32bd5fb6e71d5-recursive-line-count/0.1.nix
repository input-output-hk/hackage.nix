{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "recursive-line-count";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Joseph Adams 2012";
        maintainer = "joeyadams3.14159@gmail.com";
        author = "Joey Adams";
        homepage = "https://github.com/joeyadams/haskell-recursive-line-count";
        url = "";
        synopsis = "Count lines in files and display them hierarchically";
        description = "This program can be used to count lines of code in a program and display\nthem hierarchically.  For example, to tally up lines of Haskell code in a\ngit repository:\n\n>git ls-files '*.hs' | recursive-line-count\n\nMore precisely, @recursive-line-count@ takes a list of file names on\nstandard input, counts lines in each file, and displays the results in a\nGtkTreeView.\n\nNote that although this package is BSD3-licensed, it has LGPL dependencies.";
        buildType = "Simple";
      };
      components = {
        exes = {
          recursive-line-count = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.gtk
              hsPkgs.process
              hsPkgs.mtl
              hsPkgs.filepath
              hsPkgs.bytestring
            ];
          };
        };
      };
    }