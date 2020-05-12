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
      specVersion = "1.8";
      identifier = { name = "ripple-federation"; version = "0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2014 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "https://github.com/singpolyma/ripple-federation-haskell";
      url = "";
      synopsis = "Utilities and types to work with the Ripple federation protocol";
      description = "To resolve federation names, etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."http-streams" or (errorHandler.buildDepError "http-streams"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."unexceptionalio" or (errorHandler.buildDepError "unexceptionalio"))
          (hsPkgs."base58address" or (errorHandler.buildDepError "base58address"))
          ];
        buildable = true;
        };
      };
    }