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
      identifier = { name = "runGhcBWrap-core"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "galen.sprout@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Build haskell executables";
      description = "Build haskell executables through types and IStr, with the ability to pass data back and forth via JSON and types from this package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."IStr" or (errorHandler.buildDepError "IStr"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."scrappy-core" or (errorHandler.buildDepError "scrappy-core"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }