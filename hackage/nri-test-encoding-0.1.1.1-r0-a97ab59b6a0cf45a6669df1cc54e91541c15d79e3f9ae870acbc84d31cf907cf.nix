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
      specVersion = "1.18";
      identifier = { name = "nri-test-encoding"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2021 NoRedInk Corp.";
      maintainer = "haskell-open-source@noredink.com";
      author = "NoRedInk";
      homepage = "https://github.com/NoRedInk/haskell-libraries/tree/trunk/nri-test-encoding#readme";
      url = "";
      synopsis = "A library to simplify writing golden tests for encoding types.";
      description = "Please see the README at <https://github.com/NoRedInk/haskell-libraries/tree/trunk/nri-test-encoding#readme>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."nri-prelude" or (errorHandler.buildDepError "nri-prelude"))
          (hsPkgs."nri-redis" or (errorHandler.buildDepError "nri-redis"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-auth-server" or (errorHandler.buildDepError "servant-auth-server"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }