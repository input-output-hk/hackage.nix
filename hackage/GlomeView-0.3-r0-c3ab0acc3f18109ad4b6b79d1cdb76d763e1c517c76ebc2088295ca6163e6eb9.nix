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
      identifier = { name = "GlomeView"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright 2008,2010 Jim Snow";
      maintainer = "Jim Snow <jsnow@cs.pdx.edu>";
      author = "Jim Snow";
      homepage = "http://haskell.org/haskellwiki/Glome";
      url = "";
      synopsis = "SDL Frontend for Glome ray tracer";
      description = "Ray Tracer capable of rendering a variety of primitives,\nwith support for CSG (difference and intersection of solids),\nBIH-based acceleration structure, and ability to load NFF\nformat files.  The rendering algorithms have been abstracted\nto an external library, GlomeTrace.  This is just a front-end\nto the library that renders scenes into an SDL window.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Glome" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."GlomeVec" or (errorHandler.buildDepError "GlomeVec"))
            (hsPkgs."GlomeTrace" or (errorHandler.buildDepError "GlomeTrace"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
          ];
          buildable = true;
        };
      };
    };
  }