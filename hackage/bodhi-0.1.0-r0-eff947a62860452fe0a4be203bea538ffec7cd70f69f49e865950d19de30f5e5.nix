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
      specVersion = "1.22";
      identifier = { name = "bodhi"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2020 Jens Petersen";
      maintainer = "Jens Petersen <juhpetersen@gmail.com>";
      author = "Jens Petersen";
      homepage = "https://github.com/juhp/bodhi-hs";
      url = "";
      synopsis = "Fedora Bodhi REST client library";
      description = "A REST client library for the Fedora Bodhi updates server.\nThe binding is currently fairly low-level returning JSON Objects.\nSo far it covers nearly all of the GET part of the API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-query" or (errorHandler.buildDepError "http-query"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }