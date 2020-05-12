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
      identifier = { name = "enumerable"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2009 Daniel Peebles";
      maintainer = "Daniel Peebles <pumpkingod@gmail.com>";
      author = "Daniel Peebles";
      homepage = "";
      url = "";
      synopsis = "A typeclass for enumerating all values a type";
      description = "Fully enumerate any type, including functions of enumerable types! Includes a fun controversial function equality instance too :)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."control-monad-omega" or (errorHandler.buildDepError "control-monad-omega"))
          ];
        buildable = true;
        };
      };
    }