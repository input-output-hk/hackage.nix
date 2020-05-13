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
      specVersion = "2.2";
      identifier = { name = "miss-porcelain"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015-2018 Alec Heller & davean";
      maintainer = "oss@xkcd.com";
      author = "Alec Heller &  davean";
      homepage = "https://oss.xkcd.com/";
      url = "";
      synopsis = "Useability extras built on top of miss.";
      description = "This package builds on 'miss', providing convinient interfaces for working with git repositories.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filesystem-abstractions" or (errorHandler.buildDepError "filesystem-abstractions"))
          (hsPkgs."list-tries" or (errorHandler.buildDepError "list-tries"))
          (hsPkgs."miss" or (errorHandler.buildDepError "miss"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."posix-paths" or (errorHandler.buildDepError "posix-paths"))
          ];
        buildable = true;
        };
      };
    }