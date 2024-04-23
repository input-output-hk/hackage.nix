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
      identifier = { name = "lti13"; version = "0.2.0.2"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "Jade <software at lfcode dot ca>";
      author = "Jade";
      homepage = "";
      url = "";
      synopsis = "Core functionality for LTI 1.3.";
      description = "A library implementing the core\n<http://www.imsglobal.org/spec/lti/v1p3/ LTI 1.3> authentication protocol,\nsuitable for use in implementing libraries for any web framework. An example\nuse is <https://hackage.haskell.org/package/yesod-auth-lti13>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."jose-jwt" or (errorHandler.buildDepError "jose-jwt"))
          (hsPkgs."oidc-client" or (errorHandler.buildDepError "oidc-client"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."th-utilities" or (errorHandler.buildDepError "th-utilities"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."lti13" or (errorHandler.buildDepError "lti13"))
          ];
          buildable = true;
        };
      };
    };
  }