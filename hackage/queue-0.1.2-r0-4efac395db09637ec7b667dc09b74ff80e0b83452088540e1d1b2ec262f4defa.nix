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
    flags = { usestm = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "queue"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "http://code.haskell.org/~mokus/queue";
      url = "";
      synopsis = "Abstraction typeclasses for queue-like things.";
      description = "A collection of abstract interfaces to mutable\nqueue-like things.\nNote that I named this module before I realized that\nthere was a module of the same name in (base<3).  I\nam open to suggestions for a new name.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ (pkgs.lib).optional (flags.usestm) (hsPkgs."stm" or (errorHandler.buildDepError "stm"));
        buildable = true;
        };
      };
    }