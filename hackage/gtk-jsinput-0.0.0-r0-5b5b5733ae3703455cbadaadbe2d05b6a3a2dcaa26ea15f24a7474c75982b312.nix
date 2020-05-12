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
      identifier = { name = "gtk-jsinput"; version = "0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Timothy Hobbs <timothyhobbs@seznam.cz>";
      author = "Timothy Hobbs";
      homepage = "http://github.com/timthelion/gtk-jsinput";
      url = "";
      synopsis = "A simple custom form widget for gtk which allows inputing of JSON values";
      description = "Generates a simple form which allows users to input JSON values of type Bool, Rational and String.\nSaving of the form data is performed on \"focus change\".\nThis means that you provide jsInputNew with a special callback\nand that callback gets run every time the user changes a value in the form.\nYou can then save the contents of the form,\nor sync them to your application's own internal state.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          ];
        buildable = true;
        };
      };
    }