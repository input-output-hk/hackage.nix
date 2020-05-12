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
      identifier = { name = "yesod-elements"; version = "1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "";
      url = "";
      synopsis = "Non template haskell markup building function in the spirit of lucid";
      description = "Build yesod widgets without shakespearean templating";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          ];
        buildable = true;
        };
      };
    }