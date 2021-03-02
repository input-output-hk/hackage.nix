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
      identifier = { name = "regular"; version = "0.2.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Universiteit Utrecht";
      maintainer = "generics@haskell.org";
      author = "Jose Pedro Magalhaes";
      homepage = "";
      url = "";
      synopsis = "Generic programming library for regular datatypes.";
      description = "This package provides generic functionality for regular datatypes.\nRegular datatypes are recursive datatypes such as lists, binary trees,\netc. This library cannot be used with mutually recursive datatypes or\nwith nested datatypes. The multirec library [1] can deal with mutually\nrecursive datatypes.\n\nThis library has been described in the paper:\n\n*  /A Lightweight Approach to Datatype-Generic Rewriting./\nThomas van Noort, Alexey Rodriguez, Stefan Holdermans, Johan Jeuring, Bastiaan Heeren.\nACM SIGPLAN Workshop on Generic Programming 2008.\n\nMore information about this library can be found at\n<http://www.cs.uu.nl/wiki/GenericProgramming/Regular>.\n\n\\[1] <http://hackage.haskell.org/package/multirec>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ [
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }