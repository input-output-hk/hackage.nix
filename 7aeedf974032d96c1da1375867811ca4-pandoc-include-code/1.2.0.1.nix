{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "pandoc-include-code";
        version = "1.2.0.1";
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
      "pandoc-include-code" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unordered-containers)
          (hsPkgs.process)
          (hsPkgs.filepath)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.pandoc-types)
        ];
      };
      exes = {
        "pandoc-include-code" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pandoc-types)
            (hsPkgs.pandoc-include-code)
          ];
        };
      };
      tests = {
        "filter-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pandoc-types)
            (hsPkgs.pandoc-include-code)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }