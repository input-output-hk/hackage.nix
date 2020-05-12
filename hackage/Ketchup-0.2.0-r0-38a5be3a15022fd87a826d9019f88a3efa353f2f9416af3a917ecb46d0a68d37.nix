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
      identifier = { name = "Ketchup"; version = "0.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "zikyky@gmail.com";
      author = "Alessandro Gatti";
      homepage = "https://github.com/Hamcha/Ketchup";
      url = "";
      synopsis = "A super small web framework for those who don't like big and fancy codebases";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          ];
        buildable = true;
        };
      };
    }