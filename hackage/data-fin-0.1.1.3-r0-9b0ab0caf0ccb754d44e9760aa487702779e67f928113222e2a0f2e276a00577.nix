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
    flags = { base4 = true; splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "data-fin"; version = "0.1.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012--2014 wren gayle romano";
      maintainer = "wren@community.haskell.org";
      author = "wren gayle romano";
      homepage = "http://code.haskell.org/~wren/";
      url = "";
      synopsis = "Finite totally ordered sets";
      description = "Finite totally ordered sets";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."prelude-safeenum" or (errorHandler.buildDepError "prelude-safeenum"))
          (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
          (hsPkgs."lazysmallcheck" or (errorHandler.buildDepError "lazysmallcheck"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }