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
      specVersion = "3.0";
      identifier = { name = "elasticsearch-interchange"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Layer 3 Communications";
      maintainer = "amartin@layer3com.com";
      author = "Andrew Martin";
      homepage = "";
      url = "";
      synopsis = "Serialization of Elasticsearch requests and responses";
      description = "This library provides data types for communicating with elasticsearch. It\nalso includes serialization and deserialization functions for these data\ntypes. This library does not include machinery for transport. The user is\nresponsible for using an http client forming the complete requests\n(e.g. setting the Content-Type header).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytebuild" or (errorHandler.buildDepError "bytebuild"))
          (hsPkgs."json-query" or (errorHandler.buildDepError "json-query"))
          (hsPkgs."json-syntax" or (errorHandler.buildDepError "json-syntax"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
          (hsPkgs."unpacked-maybe-text" or (errorHandler.buildDepError "unpacked-maybe-text"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytebuild" or (errorHandler.buildDepError "bytebuild"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."elasticsearch-interchange" or (errorHandler.buildDepError "elasticsearch-interchange"))
            (hsPkgs."json-query" or (errorHandler.buildDepError "json-query"))
            (hsPkgs."json-syntax" or (errorHandler.buildDepError "json-syntax"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
            (hsPkgs."unpacked-maybe-text" or (errorHandler.buildDepError "unpacked-maybe-text"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            ];
          buildable = true;
          };
        };
      };
    }