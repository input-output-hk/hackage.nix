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
      identifier = { name = "captcha-core"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2021 qwbarch";
      maintainer = "qwbarch@gmail.com";
      author = "qwbarch";
      homepage = "https://github.com/qwbarch/captcha-haskell#readme";
      url = "";
      synopsis = "A package for integrating a variety of captcha solving services.";
      description = "A package for integrating a variety of captcha solving services.\n\nFeature list:\n\n* Makes use of the [lens](https://hackage.haskell.org/package/lens) package\n* Mtl-style typeclass, allowing you to use your own monad transformer stack\n* No exceptions are thrown. Errors are shown explicitly through its type signature\n* Minimal test suite provided for each captcha type\n* Captcha services are separated into different packages. Use what you need!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cookie" or (errorHandler.buildDepError "cookie"))
          (hsPkgs."data-default-extra" or (errorHandler.buildDepError "data-default-extra"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."o-clock" or (errorHandler.buildDepError "o-clock"))
          (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
        ];
        buildable = true;
      };
    };
  }