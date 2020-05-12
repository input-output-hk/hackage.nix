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
      identifier = { name = "crypto-random-effect"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "tob@butter.sh";
      author = "Tobias Florek";
      homepage = "https://githu";
      url = "";
      synopsis = "A random effect using crypto-random";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."crypto-random" or (errorHandler.buildDepError "crypto-random"))
          (hsPkgs."extensible-effects" or (errorHandler.buildDepError "extensible-effects"))
          (hsPkgs."securemem" or (errorHandler.buildDepError "securemem"))
          ];
        buildable = true;
        };
      };
    }