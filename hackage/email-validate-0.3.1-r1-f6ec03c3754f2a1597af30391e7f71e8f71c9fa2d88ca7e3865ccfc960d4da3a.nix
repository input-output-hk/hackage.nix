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
      specVersion = "1.6";
      identifier = { name = "email-validate"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "George Pollard <porges@porg.es>";
      author = "George Pollard";
      homepage = "http://porg.es/blog/email-address-validation-simpler-faster-more-correct";
      url = "";
      synopsis = "Validating an email address string against RFC 5322";
      description = "Validating an email address string against RFC 5322";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."ranges" or (errorHandler.buildDepError "ranges"))
          ];
        buildable = true;
        };
      };
    }