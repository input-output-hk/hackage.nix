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
      identifier = { name = "yesod-fb"; version = "0.3.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa";
      homepage = "https://github.com/prowdsponsor/yesod-fb";
      url = "";
      synopsis = "Useful glue functions between the fb library and Yesod.";
      description = "This package contains useful glue functions between the fb\npackage (<http://hackage.haskell.org/package/fb>) and Yesod.\nThese functions can't be included on the fb package itself\nbecause it should not depend on Yesod.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."fb" or (errorHandler.buildDepError "fb"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }