{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pandoc-include-code";
          version = "0.1.0";
        };
        license = "MPL-2.0";
        copyright = "";
        maintainer = "Oskar Wickström";
        author = "Oskar Wickström";
        homepage = "https://github.com/owickstrom/pandoc-include-code";
        url = "";
        synopsis = "A Pandoc filter for including code from source files";
        description = "A Pandoc filter for including code from source files.\nYou get to:\nKeep your examples and documentation compiled and in sync\nInclude small snippets from larger source files\nUse Markdown or LaTeX output in Pandoc";
        buildType = "Simple";
      };
      components = {
        exes = {
          "pandoc-include-code" = {
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