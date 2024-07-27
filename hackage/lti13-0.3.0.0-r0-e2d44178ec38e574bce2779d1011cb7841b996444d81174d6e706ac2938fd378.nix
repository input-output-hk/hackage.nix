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
      identifier = { name = "lti13"; version = "0.3.0.0"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "Jade Lovelace <software at lfcode dot ca>";
      author = "Jade Lovelace";
      homepage = "https://github.com/lf-/lti13#readme";
      url = "";
      synopsis = "Core functionality for LTI 1.3";
      description = "A library implementing the core <http://www.imsglobal.org/spec/lti/v1p3/ LTI 1.3> authentication protocol, suitable for use in implementing libraries for any web framework. An example use is <https://hackage.haskell.org/package/yesod-auth-lti13>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."jose-jwt" or (errorHandler.buildDepError "jose-jwt"))
          (hsPkgs."oidc-client" or (errorHandler.buildDepError "oidc-client"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."jose-jwt" or (errorHandler.buildDepError "jose-jwt"))
            (hsPkgs."lti13" or (errorHandler.buildDepError "lti13"))
            (hsPkgs."oidc-client" or (errorHandler.buildDepError "oidc-client"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."th-utilities" or (errorHandler.buildDepError "th-utilities"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }