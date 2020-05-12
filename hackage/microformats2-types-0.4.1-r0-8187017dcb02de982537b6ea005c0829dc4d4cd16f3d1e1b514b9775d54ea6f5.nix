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
      specVersion = "1.18";
      identifier = { name = "microformats2-types"; version = "0.4.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "2014-2015 Greg V <greg@unrelenting.technology>";
      maintainer = "greg@unrelenting.technology";
      author = "Greg V";
      homepage = "https://github.com/myfreeweb/microformats2-types";
      url = "";
      synopsis = "Microformats 2 types (with Aeson instances)";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."setters" or (errorHandler.buildDepError "setters"))
          ];
        buildable = true;
        };
      };
    }