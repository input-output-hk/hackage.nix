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
      specVersion = "0";
      identifier = { name = "vty"; version = "4.6.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Corey O'Connor (coreyoconnor@gmail.com)";
      author = "Stefan O'Rear, Corey O'Connor";
      homepage = "http://trac.haskell.org/vty/";
      url = "";
      synopsis = "A simple terminal access library";
      description = "vty is terminal GUI library in the niche of ncurses.  It is intended to be easy to use, have no\nconfusing corner cases, and good support for common terminal types.\n\nIncluded in the source distribution is a program test/interactive_terminal_test.hs that\ndemonstrates the various features.\n\nIf your terminal is not behaving as expected the results of the test/interactive_terminal_test.hs\nprogram should be sent to the Vty maintainter to aid in debugging the issue.\n\nNotable infelicities: Sometimes poor efficiency; Assumes UTF-8 character encoding support by the\nterminal;\n\nYou can 'darcs get' it from <http://code.haskell.org/vty/>\n\n&#169; 2006-2007 Stefan O'Rear; BSD3 license.\n\n&#169; 2008-2010 Corey O'Connor; BSD3 license.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }