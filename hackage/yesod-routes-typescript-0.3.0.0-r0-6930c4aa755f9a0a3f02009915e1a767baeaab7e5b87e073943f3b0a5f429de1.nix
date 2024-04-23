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
      identifier = { name = "yesod-routes-typescript"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "max@docmunch.com";
      author = "Max Cantor";
      homepage = "https://github.com/docmunch/yesod-routes-typescript";
      url = "";
      synopsis = "generate TypeScript routes for Yesod";
      description = "parse the Yesod routes data structure and generate routes that can be used in typescript";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."classy-prelude" or (errorHandler.buildDepError "classy-prelude"))
          (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."yesod-routes" or (errorHandler.buildDepError "yesod-routes"))
        ];
        buildable = true;
      };
    };
  }