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
      identifier = { name = "html-minimalist"; version = "0.12"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2006-2012";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/?t=html-minimalist";
      url = "";
      synopsis = "Minimalist haskell html library";
      description = "Text.HTML.Light is a very simple Haskell module\nfor writing [x]html documents.  It provides\nconstructors for html elements and attributes\nin terms of Text.XML.Light.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          ];
        buildable = true;
        };
      };
    }