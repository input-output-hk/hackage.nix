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
      specVersion = "1.2";
      identifier = {
        name = "Binpack";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bbb@cs.unc.edu";
      author = "Björn B. Brandenburg";
      homepage = "";
      url = "";
      synopsis = "Common bin packing heuristics";
      description = "An implementation of the first-fit, modified-first-fit, last-fit, best-fit,\nworst-fit, and almost-last-fit bin packing heuristics. Items can be packed in\norder of both decreasing and increasing size (and, of course, in unmodified\norder).\n\nThe module supports both the standard (textbook) minimization problem\n(/How many bins do I need?/) and the more practical fitting problem\n(/I've got n bins; which items can I take?/).\n\nThe API is simple and the module is documented with Haddock (complete with\nexamples). The implementation of the above-mentioned heuristics is complete\nand partially tested with QuickCheck. However, note that speed has not been a\nprimary concern to date.\n\nPatches and feedback are very welcome.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }