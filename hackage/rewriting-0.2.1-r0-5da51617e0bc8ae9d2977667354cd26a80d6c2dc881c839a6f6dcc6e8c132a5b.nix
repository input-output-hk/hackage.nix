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
      identifier = { name = "rewriting"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Universiteit Utrecht";
      maintainer = "generics@haskell.org";
      author = "Thomas van Noort,\nAlexey Rodriguez,\nStefan Holdermans,\nJohan Jeuring,\nBastiaan Heeren";
      homepage = "";
      url = "";
      synopsis = "Generic rewriting library for regular datatypes.";
      description = "This package provides rewriting functionality for regular datatypes.\nRegular datatypes are recursive datatypes such as lists, binary trees,\netc. This library cannot be used with mutually recursive datatypes or\nwith nested datatypes.\n\nThis library has been described in the paper:\n\n*  /A Lightweight Approach to Datatype-Generic Rewriting./\nThomas van Noort, Alexey Rodriguez, Stefan Holdermans, Johan Jeuring, Bastiaan Heeren.\nACM SIGPLAN Workshop on Generic Programming 2008.\n\nMore information about this library can be found at\n<http://www.cs.uu.nl/wiki/GenericProgramming/Rewriting>.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."regular" or (errorHandler.buildDepError "regular"))
        ];
        buildable = true;
      };
    };
  }