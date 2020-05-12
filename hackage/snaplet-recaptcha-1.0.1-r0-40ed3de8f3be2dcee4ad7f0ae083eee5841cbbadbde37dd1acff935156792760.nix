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
      identifier = { name = "snaplet-recaptcha"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mike Ledger <eleventynine@gmail.com>";
      author = "Mike Ledger, Lars Petersen";
      homepage = "http://github.com/mikeplus64/snaplet-recaptcha";
      url = "";
      synopsis = "A ReCAPTCHA verification snaplet with Heist integration and connection sharing.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."heist" or (errorHandler.buildDepError "heist"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          ];
        buildable = true;
        };
      };
    }