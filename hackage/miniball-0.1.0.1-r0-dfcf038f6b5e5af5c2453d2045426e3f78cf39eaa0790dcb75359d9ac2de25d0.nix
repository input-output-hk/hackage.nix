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
      specVersion = "1.4";
      identifier = { name = "miniball"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "2013 Gard Spreemann (bindings). 1999-2013 Bernd Gärtner (Miniball itself)";
      maintainer = "Gard Spreemann <gspreemann@gmail.com>";
      author = "Gard Spreemann for bindings. Bernd Gärtner for Miniball itself.";
      homepage = "http://nonempty.org/software/haskell-miniball";
      url = "";
      synopsis = "Bindings to Miniball, a smallest enclosing ball library";
      description = "Bindings to Miniball, a C++ library (<http://www.inf.ethz.ch/personal/gaertner/miniball.html>) for\ncomputing the smallest enclosing ball of a set of points in Euclidean space.\n\nThe Miniball library itself is not included, as I consider it a dependency. It consists of only\na header file, and can be retrieved from <http://www.inf.ethz.ch/personal/gaertner/miniball.html>.\nTo build this package, simply have @miniball.hpp@ in GCC's include path. The standard C++ library\nand GCC with C++ support are also needed.\n\nMiniball itself is copyright 1999-2013, Bernd Gärtner.\n\nThe current version has only been tested with version 3.0 of Miniball.\n\nChanges in version 0.1.0.1:\n\n* Fix grave allocation bug.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        buildable = true;
        };
      };
    }