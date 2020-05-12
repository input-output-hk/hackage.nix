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
    flags = { base4 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "pointless-fun"; version = "1.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009--2012 wren ng thornton";
      maintainer = "wren@community.haskell.org";
      author = "wren ng thornton";
      homepage = "http://code.haskell.org/~wren/";
      url = "";
      synopsis = "Some common point-free combinators.";
      description = "Some common point-free combinators.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }