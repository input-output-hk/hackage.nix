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
      specVersion = "2.4";
      identifier = { name = "secretspec"; version = "0.13.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "domen@enlambda.com";
      author = "Domen Kožar";
      homepage = "https://secretspec.dev/";
      url = "";
      synopsis = "Haskell SDK for SecretSpec, a declarative secrets manager";
      description = "A thin client over the @secretspec-ffi@ C ABI (linked at build time).\nResolution (providers, chains, profiles, generation, @as_path@) happens in the\nRust core; this package marshals a JSON request to the native library and\nparses the response, mirroring the Rust derive crate's vocabulary.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        libs = [
          (pkgs."secretspec_ffi" or (errorHandler.sysDepError "secretspec_ffi"))
        ];
        buildable = true;
      };
      tests = {
        "secretspec-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."secretspec" or (errorHandler.buildDepError "secretspec"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }