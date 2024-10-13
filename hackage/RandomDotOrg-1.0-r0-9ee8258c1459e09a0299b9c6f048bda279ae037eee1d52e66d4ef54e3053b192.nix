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
    flags = { example = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "RandomDotOrg"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2022-2024 Mike Pilgrem";
      maintainer = "public@pilgrem.com";
      author = "Mike Pilgrem";
      homepage = "https://github.com/mpilgrem/RandomDotOrg#readme";
      url = "";
      synopsis = "Haskell bindings to the RANDOM.ORG Core API";
      description = "Haskell bindings to the <https://www.random.org/ RANDOM.ORG> Core API\n(Release 4). The API provides access to a true random number generator (TRNG)\nbased on atmospheric noise.\n\nNB: The use of the API's services is subject to the terms and conditions of\nRandomness and Integrity Services Limited.\n\nAn example of use of the library is provided in the @example@ directory.\n\nThis package and its repository have no connection with Randomness and\nIntegrity Services Limited or its affilates or the RANDOM.ORG domain.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."servant-client-core" or (errorHandler.buildDepError "servant-client-core"))
          (hsPkgs."servant-jsonrpc" or (errorHandler.buildDepError "servant-jsonrpc"))
          (hsPkgs."servant-jsonrpc-client" or (errorHandler.buildDepError "servant-jsonrpc-client"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."uuid-types" or (errorHandler.buildDepError "uuid-types"))
        ];
        buildable = true;
      };
      exes = {
        "RandomDotOrg-example" = {
          depends = [
            (hsPkgs."RandomDotOrg" or (errorHandler.buildDepError "RandomDotOrg"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."servant-client-core" or (errorHandler.buildDepError "servant-client-core"))
            (hsPkgs."servant-jsonrpc" or (errorHandler.buildDepError "servant-jsonrpc"))
            (hsPkgs."servant-jsonrpc-client" or (errorHandler.buildDepError "servant-jsonrpc-client"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."uuid-types" or (errorHandler.buildDepError "uuid-types"))
          ];
          buildable = if !flags.example then false else true;
        };
      };
    };
  }