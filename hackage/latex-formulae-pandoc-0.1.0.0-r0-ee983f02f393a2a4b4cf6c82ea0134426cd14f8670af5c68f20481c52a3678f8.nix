{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "latex-formulae-pandoc";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Liam O'Connor, 2015";
      maintainer = "liamoc@cse.unsw.edu.au";
      author = "Liam O'Connor";
      homepage = "http://github.com/liamoc/latex-formulae#readme";
      url = "";
      synopsis = "Render LaTeX formulae in pandoc documents to images with an actual LaTeX installation";
      description = "This library provides utility functions to convert LaTeX equations to images in Pandoc documents using the @latex-formulae-image@ package.\nIt requires an actual LaTeX installation to work (@latex@,@dvips@), along with ImageMagick's @convert@ (which needs to understand PostScript)\n\nAn executable is also provided which can be used as a Pandoc filter from the commandline, which allows this technique to be used\neven for standalone Pandoc jobs.";
      buildType = "Simple";
    };
    components = {
      "latex-formulae-pandoc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pandoc-types)
          (hsPkgs.latex-formulae-image)
          (hsPkgs.JuicyPixels)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
        ];
      };
      exes = {
        "latex-formulae-filter" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.latex-formulae-pandoc)
            (hsPkgs.pandoc-types)
            (hsPkgs.latex-formulae-image)
          ];
        };
      };
    };
  }