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
      specVersion = "1.0";
      identifier = { name = "vty"; version = "3.1.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Corey O'Connor (coreyoconnor@gmail.com)";
      author = "Stefan O'Rear";
      homepage = "http://trac.haskell.org/vty/";
      url = "";
      synopsis = "A simple terminal access library";
      description = "vty is a *very* simplistic library in the niche of ncurses.  It is intended\nto be easy to use, have no confusing corner cases, and good support for common\nterminal types.\n\nIf you want to use it, currently the best reference is the test module (Test.hs).\n\nNotable infelicities: requires an ANSI-type terminal, poor efficiency,\nrequires Linux\\/xterm style UTF8 support.\n\nYou can 'darcs get' it from <http://code.haskell.org/vty/>\n'\n&#169; 2006-2007 Stefan O'Rear; BSD3 license.";
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
        ];
        buildable = true;
      };
    };
  }