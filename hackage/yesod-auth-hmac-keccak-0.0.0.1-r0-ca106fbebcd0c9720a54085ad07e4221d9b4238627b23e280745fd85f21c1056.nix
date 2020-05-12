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
      identifier = { name = "yesod-auth-hmac-keccak"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "nek0@chelnok.de";
      author = "nek0";
      homepage = "";
      url = "";
      synopsis = "An account authentication plugin for yesod with encrypted\ntoken transfer.";
      description = "This authentication plugin for Yesod uses a challenge-response\nauthentication mechanism, where the password is encrypted via HMAC-\nKeccak on the client side.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
          (hsPkgs."yesod-auth" or (errorHandler.buildDepError "yesod-auth"))
          (hsPkgs."yesod-static" or (errorHandler.buildDepError "yesod-static"))
          (hsPkgs."yesod-persistent" or (errorHandler.buildDepError "yesod-persistent"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          ];
        buildable = true;
        };
      };
    }