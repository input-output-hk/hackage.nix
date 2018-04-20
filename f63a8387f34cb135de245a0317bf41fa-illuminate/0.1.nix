{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      executable = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "illuminate";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jgm@berkeley.edu";
        author = "John MacFarlane";
        homepage = "http://github.com/jgm/illuminate";
        url = "";
        synopsis = "A fast syntax highlighting library built with alex.";
        description = "illuminate is a source-code syntax highlighting\nlibrary and a command-line highlighting tool.\nIt can produce output in HTML, XHTML, LaTeX, or\nANSI. It is smaller, less memory-hungry, and\nmuch faster than highlighting-kate.";
        buildType = "Custom";
      };
      components = {
        illuminate = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.xhtml
            hsPkgs.html
            hsPkgs.utf8-string
            hsPkgs.hscolour
            hsPkgs.filemanip
            hsPkgs.filepath
          ];
        };
        exes = {
          illuminate = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.xhtml
              hsPkgs.html
            ];
          };
        };
      };
    }