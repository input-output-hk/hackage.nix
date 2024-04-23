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
      identifier = { name = "watchdog"; version = "0.2.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 - 2014 Jan Vornberger";
      maintainer = "Jan Vornberger <jan@uos.de>";
      author = "Jan Vornberger <jan@uos.de>";
      homepage = "";
      url = "";
      synopsis = "Simple control structure to re-try an action with exponential backoff";
      description = "See Control.Watchdog for documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }