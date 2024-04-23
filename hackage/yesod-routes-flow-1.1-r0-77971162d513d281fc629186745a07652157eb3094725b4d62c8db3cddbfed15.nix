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
      identifier = { name = "yesod-routes-flow"; version = "1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Greg Weber <greg@frontrowed.com>";
      author = "Max Cantor, Felipe Lessa";
      homepage = "https://github.com/frontrowed/yesod-routes-flow";
      url = "";
      synopsis = "Generate Flow routes for Yesod";
      description = "Parse the Yesod routes data structure and generate routes that can be used with Flow.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."classy-prelude" or (errorHandler.buildDepError "classy-prelude"))
          (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
        ];
        buildable = true;
      };
    };
  }