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
      identifier = {
        name = "squeal-postgresql-uuid-ossp";
        version = "0.1.0.1";
        };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2022 Morphism, LLC";
      maintainer = "eitan.chatav@gmail.com";
      author = "Eitan Chatav";
      homepage = "https://github.com/morphismtech/squeal/uuid-ossp";
      url = "";
      synopsis = "UUID OSSP extension for Squeal";
      description = "UUID OSSP extension for Squeal";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."squeal-postgresql" or (errorHandler.buildDepError "squeal-postgresql"))
          ];
        buildable = true;
        };
      };
    }