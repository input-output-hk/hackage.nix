{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "svgutils";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright Neil Brown, 2010.";
      maintainer = "neil@twistedsquare.com";
      author = "Neil Brown";
      homepage = "https://patch-tag.com/r/twistedsquare/svgutils/home";
      url = "";
      synopsis = "Helper functions for dealing with SVG files";
      description = "A library for performing simple manipulations with SVG\nfiles, primarily tiling several SVG files together into a\nsingle file (ready for printing).\n\nAs well as the exposed library modules, the package comes\nwith an executable called SVGtile that can perform this\nSVG tiling from the command-line.  SVGtile takes a list\nof SVG files as command-line arguments, then generates\nlots of files of the form TiledFront-1.svg.  Paper-size\n(default A4) and other settings can be set using\ncommand-line options: see SVGtile --help.";
      buildType = "Simple";
    };
    components = {
      "svgutils" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.xml)
        ];
      };
      exes = {
        "SVGtile" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.xml)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }