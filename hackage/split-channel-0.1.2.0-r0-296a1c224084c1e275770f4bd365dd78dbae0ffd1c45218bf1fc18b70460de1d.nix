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
      specVersion = "1.8";
      identifier = { name = "split-channel"; version = "0.1.2.0"; };
      license = "MIT";
      copyright = "(c) 2012 Leon P Smith";
      maintainer = "leon@melding-monads.com";
      author = "Leon P Smith";
      homepage = "";
      url = "";
      synopsis = "Control.Concurrent.Chan split into sending and receiving halves.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }