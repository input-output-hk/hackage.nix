{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "Binpack"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bbb@cs.unc.edu";
      author = "Björn B. Brandenburg";
      homepage = "";
      url = "";
      synopsis = "Common bin-packing heuristics.";
      description = "An implementation of the first-fit, modified-first-fit, last-fit, best-fit,\nsum-of-squares-fit, worst-fit, and almost-last-fit bin packing\nheuristics. Items can be packed in order of both decreasing and increasing\nsize (and, of course, in unmodified order).\n\nThe module supports both the standard (textbook) minimization problem\n(/How many bins do I need?/) and the more practical fitting problem\n(/I've got n bins; which items can I take?/).\n\nThe API is simple and the module is documented with Haddock (complete with\nexamples). The implementation of the above-mentioned heuristics is complete\nand partially tested with QuickCheck. However, note that speed has not been a\nprimary concern to date.\n\nPatches and feedback are very welcome.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }