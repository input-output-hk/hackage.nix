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
      identifier = { name = "servant-activeresource"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2024-2025 Bellroy Pty Ltd";
      maintainer = "Bellroy Tech Team <haskell@bellroy.com>";
      author = "Bellroy Tech Team <haskell@bellroy.com>";
      homepage = "https://github.com/bellroy/servant-activeresource";
      url = "";
      synopsis = "Servant endpoints compatible with Rails's ActiveResource";
      description = "[ActiveResource](https://github.com/rails/activeresource) is a Rails\nlibrary for representing resources from a RESTful API as Ruby\nobjects, with a similar interface to the Rails ActiveRecord ORM.\n\nThis library provides types for describing such APIs, and functions\nto help implement Servant-style servers that provide them.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."servant-activeresource" or (errorHandler.buildDepError "servant-activeresource"))
          ];
          buildable = true;
        };
      };
    };
  }