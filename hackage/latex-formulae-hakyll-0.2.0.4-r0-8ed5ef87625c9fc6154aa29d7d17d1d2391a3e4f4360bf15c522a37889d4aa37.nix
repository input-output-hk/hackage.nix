{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "latex-formulae-hakyll";
        version = "0.2.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "Liam O'Connor, 2015";
      maintainer = "liamoc@cse.unsw.edu.au";
      author = "Liam O'Connor";
      homepage = "https://github.com/liamoc/latex-formulae#readme";
      url = "";
      synopsis = "Use actual LaTeX to render formulae inside Hakyll pages";
      description = "This library provides functions to render all math formulae inside Pandoc-processed Hakyll pages using\nreal LaTeX.\n\nIt also provides a simple LRU cache to avoid recompiling the same formulae repeatedly during a @watch@\nsession.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.latex-formulae-image)
          (hsPkgs.latex-formulae-pandoc)
          (hsPkgs.hakyll)
          (hsPkgs.pandoc-types)
          (hsPkgs.lrucache)
        ];
      };
    };
  }