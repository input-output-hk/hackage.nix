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
      identifier = { name = "proto-lens-descriptors"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Google Inc.";
      maintainer = "proto-lens@googlegroups.com";
      author = "Judah Jacobson";
      homepage = "";
      url = "";
      synopsis = "Protocol buffers for describing the definitions of messages.";
      description = "This package provides definitions for the 'proto-lens' package\nof message types which describe @.proto@ files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
          (hsPkgs."lens-labels" or (errorHandler.buildDepError "lens-labels"))
          (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }