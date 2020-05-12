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
      specVersion = "1.16";
      identifier = { name = "ihaskell-aeson"; version = "0.3.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "andrew.gibiansky@gmail.com";
      author = "Andrew Gibiansky";
      homepage = "http://www.github.com/gibiansky/ihaskell";
      url = "";
      synopsis = "IHaskell display instances for Aeson";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."here" or (errorHandler.buildDepError "here"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."ihaskell" or (errorHandler.buildDepError "ihaskell"))
          ];
        buildable = true;
        };
      };
    }