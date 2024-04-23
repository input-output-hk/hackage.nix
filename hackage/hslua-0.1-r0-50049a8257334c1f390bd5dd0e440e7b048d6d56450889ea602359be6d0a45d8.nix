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
      identifier = { name = "hslua"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2007-2007, Gracjan Polak";
      maintainer = "Gracjan Polak <gracjanpolak@gmail.com>";
      author = "Gracjan Polak <gracjanpolak@gmail.com>";
      homepage = "http://home.agh.edu.pl/~gpolak/hslua";
      url = "";
      synopsis = "A Lua language interpreter embedding in Haskell";
      description = "The Scripting.Lua module is a wrapper of Lua language interpreter\nas described in http://www.lua.org/.\n\nThe package is standalone: full Lua interpreter is distributed in this\npackage as well.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }