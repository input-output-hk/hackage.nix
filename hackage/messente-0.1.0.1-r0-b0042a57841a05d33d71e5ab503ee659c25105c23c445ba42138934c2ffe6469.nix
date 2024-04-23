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
      specVersion = "1.8";
      identifier = { name = "messente"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "kaiko@zazler.com";
      author = "Kaiko Kaur";
      homepage = "http://github.com/kaiko/messente-haskell";
      url = "";
      synopsis = "Messente SMS Gateway";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
        ];
        buildable = true;
      };
    };
  }