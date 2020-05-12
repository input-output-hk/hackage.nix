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
      identifier = { name = "attoparsec-base64"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Athan Clark";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/attoparsec-base64#readme";
      url = "";
      synopsis = "Fetch only base64 characters, erroring in the attoparsec monad on failure";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
          ];
        buildable = true;
        };
      };
    }