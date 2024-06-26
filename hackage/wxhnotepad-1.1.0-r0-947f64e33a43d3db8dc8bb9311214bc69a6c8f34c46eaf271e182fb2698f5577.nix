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
      identifier = { name = "wxhnotepad"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2010 Fernando \"Brujo\" Benavides";
      maintainer = "greenmellon@gmail.com";
      author = "Fernando \"Brujo\" Benavides";
      homepage = "http://github.com/elbrujohalcon/wxhnotepad";
      url = "http://code.haskell.org/wxhnotepad";
      synopsis = "An example of how to implement a basic notepad with wxHaskell";
      description = "A program to learn how to implement basic text editing functionality with wxHaskell.\nIt's not useful itself, the point is to read the code and learn from it ;)\nThe program is divided in 6 steps, each one corresponding to a window and a haskell module.  Each step includes what was learnt in the previous one, so Step6 is an almost complete basic text editor.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "wxhnotepad" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
          ];
          buildable = true;
        };
      };
    };
  }