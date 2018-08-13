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
      specVersion = "1.14";
      identifier = {
        name = "rainbow";
        version = "0.18.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2013 - 2014 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/rainbow";
      url = "";
      synopsis = "Print text to terminal with colors and effects";
      description = "rainbow helps you print Text chunks to a terminal with colors and effects\nsuch as bold, underlining, etc. You pair each Text with a description\nof how it should appear. Rainbow works with both 8-color and 256-color\nterminals.\n\nrainbow uses the terminfo package which, in turn, needs the full C\nlibrary for ncurses installed, including the development\nheaders. Before installing terminfo, you may need to install the\nncurses headers (for instance, on Debian systems, install the\nlibncurses5-dev package.)";
      buildType = "Simple";
    };
    components = {
      "rainbow" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.terminfo)
          (hsPkgs.text)
        ];
      };
    };
  }