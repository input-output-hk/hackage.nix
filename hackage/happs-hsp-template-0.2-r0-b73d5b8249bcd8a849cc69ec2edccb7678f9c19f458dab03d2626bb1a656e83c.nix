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
      identifier = { name = "happs-hsp-template"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Himmelstrup (lemmih@gmail.com)";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Utilities for using HSP templates in HAppS applications.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))
          (hsPkgs."plugins" or (errorHandler.buildDepError "plugins"))
          (hsPkgs."RJson" or (errorHandler.buildDepError "RJson"))
          (hsPkgs."HAppS-Server" or (errorHandler.buildDepError "HAppS-Server"))
          (hsPkgs."hsp" or (errorHandler.buildDepError "hsp"))
          ];
        buildable = true;
        };
      };
    }