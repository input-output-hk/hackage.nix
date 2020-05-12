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
      specVersion = "1.10";
      identifier = { name = "uri-bytestring-aeson"; version = "0.1.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hafnersimon@gmail.com";
      author = "Simon Hafner";
      homepage = "https://github.com/reactormonk/uri-bytestring-aeson";
      url = "";
      synopsis = "Aeson instances for URI Bytestring";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }