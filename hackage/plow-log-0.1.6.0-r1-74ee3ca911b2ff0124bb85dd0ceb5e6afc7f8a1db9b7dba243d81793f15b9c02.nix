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
      identifier = { name = "plow-log"; version = "0.1.6.0"; };
      license = "MIT";
      copyright = "Plow-Technologies LLC";
      maintainer = "info@plowtech.net";
      author = "Sam Balco";
      homepage = "https://github.com/plow-technologies/plow-log.git#readme";
      url = "";
      synopsis = "Contravariant logging library";
      description = "Contravariant logging library agnostic to the logging backend";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }