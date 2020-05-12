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
      specVersion = "0";
      identifier = { name = "fckeditor"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Peter Gammie <peteg42@gmail.com>";
      author = "Peter Gammie <peteg42@gmail.com>";
      homepage = "http://peteg.org/";
      url = "";
      synopsis = "Server-Side Integration for FCKeditor";
      description = "Provides Server-Side Integration for FCKeditor.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          ];
        buildable = true;
        };
      };
    }