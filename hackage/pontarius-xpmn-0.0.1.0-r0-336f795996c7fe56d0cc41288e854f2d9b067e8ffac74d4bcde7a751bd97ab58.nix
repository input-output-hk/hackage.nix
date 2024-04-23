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
      identifier = { name = "pontarius-xpmn"; version = "0.0.1.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright © Jon Kristensen, 2010-2011";
      maintainer = "jon.kristensen@pontarius.org";
      author = "Jon Kristensen, Mahdi Abdinejadi";
      homepage = "http://www.pontarius.org/projects/pontarius-xpmn/";
      url = "http://www.pontarius.org/releases/pontarius-xpmn-0.0.1.0.tar.gz";
      synopsis = "Extended Personal Media Network (XPMN) library";
      description = "Manages Extended Personal Media Network (XPMN) devices.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."pontarius-xmpp" or (errorHandler.buildDepError "pontarius-xmpp"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
        ];
        buildable = true;
      };
    };
  }