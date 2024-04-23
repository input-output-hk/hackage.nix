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
      specVersion = "1.6";
      identifier = { name = "gtk-simple-list-view"; version = "0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Timothy Hobbs <timothyhobbs@seznam.cz>";
      author = "Timothy Hobbs";
      homepage = "http://github.com/timthelion/gtk-simple-list-view";
      url = "";
      synopsis = "A simple custom form widget for gtk which allows single LOC creation/updating of list views.";
      description = "A simple custom form widget for gtk which allows single LOC creation/updating of list views.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }