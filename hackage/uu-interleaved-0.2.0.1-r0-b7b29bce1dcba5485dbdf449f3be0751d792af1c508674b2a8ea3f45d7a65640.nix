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
      specVersion = "1.6";
      identifier = { name = "uu-interleaved"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "S Doaitse Swierstra ";
      maintainer = "Doaitse Swierstra      ";
      author = "Doaitse Swierstra, Utrecht University";
      homepage = "https://github.com/UU-ComputerScience/uu-interleaved";
      url = "";
      synopsis = "Providing an interleaving combinator for use with applicative style implementations.";
      description = "This module contains parser library independent code which can be used to describe\ninterleaved execution of applicative style structures.\nIt is amongst other used in the uu-options package, which provides facilities for\nparsing command-line options or files containing preferences.\nIt generalises the permuting parsers and the list merging parsers as e.g. found in\nthe uulib library. For  a more complete description see the Technical Report\ndescribing its implementation and use see\nhttp://www.cs.uu.nl/research/techreps/UU-CS-2013-005.html";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }