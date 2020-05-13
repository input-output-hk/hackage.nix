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
    flags = { transformers_compat = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "opensource"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2016 Clint Adams";
      maintainer = "Clint Adams <clint@debian.org>";
      author = "Clint Adams";
      homepage = "https://api.opensource.org/";
      url = "";
      synopsis = "Haskell API Wrapper for the Open Source License API";
      description = "The Open Source API contains metadata regarding OSI Approved Licenses, and crosswalks that help with using and integrating this information with external sources. This library is designed to interact with that API so that users can simply build applications that are license-aware.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (if flags.transformers_compat
          then [
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
            ]
          else [
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ]);
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."opensource" or (errorHandler.buildDepError "opensource"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ] ++ (if flags.transformers_compat
            then [
              (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
              (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
              ]
            else [
              (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
              ]);
          buildable = true;
          };
        };
      };
    }