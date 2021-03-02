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
      identifier = { name = "synchronous-channels"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tov@ccs.neu.edu";
      author = "Jesse A. Tov <tov@ccs.neu.edu>";
      homepage = "";
      url = "";
      synopsis = "Synchronous communication channels";
      description = "Synchronous communication channels.  These are similar to\n'Control.Concurrent.Chan.Chan',\nbut a writer blocks until it can synchronize with a reader.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }