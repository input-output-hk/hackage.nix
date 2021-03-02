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
      specVersion = "1.0";
      identifier = { name = "leapseconds-announced"; version = "2015"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Buckwalter 2009-2015";
      maintainer = "bjorn@buckwalter.se";
      author = "Bjorn Buckwalter ";
      homepage = "";
      url = "";
      synopsis = "Leap seconds announced at library release time.";
      description = "Provides an easy to use static 'Data.Time.Clock.TAI.LeapSecondTable'\nwith the leap seconds announced at library release time.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }