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
      specVersion = "1.12";
      identifier = { name = "path-extensions"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Enumeration of common filetype extensions for use with the path library.";
      description = "Enumeration of common filetype extensions for use with the path library, add variants for adding an extension to a path and with variants for replacing an existing extension.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          ];
        buildable = true;
        };
      };
    }