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
      identifier = { name = "exact-combinatorics"; version = "0.2.0.8"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011--2015 wren gayle romano";
      maintainer = "wren@community.haskell.org";
      author = "wren gayle romano";
      homepage = "http://code.haskell.org/~wren/";
      url = "";
      synopsis = "Efficient exact computation of combinatoric functions.";
      description = "Efficient exact computation of combinatoric functions.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }