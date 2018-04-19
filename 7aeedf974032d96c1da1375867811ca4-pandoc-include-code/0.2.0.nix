{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pandoc-include-code";
          version = "0.2.0";
        };
        license = "MPL-2.0";
        copyright = "";
        maintainer = "Oskar Wickström";
        author = "Oskar Wickström";
        homepage = "https://github.com/owickstrom/pandoc-include-code";
        url = "";
        synopsis = "A Pandoc filter for including code from source files";
        description = "A Pandoc filter for including code from source files.\nIt lets you keep your examples and documentation compiled and in sync,\ninclude small snippets from larger source files, and use Markdown or LaTeX\ntogether with preformatted HTML-like sources, in Pandoc.";
        buildType = "Simple";
      };
      components = {
        exes = {
          pandoc-include-code = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.pcre-heavy
              hsPkgs.pandoc-types
            ];
          };
        };
      };
    }