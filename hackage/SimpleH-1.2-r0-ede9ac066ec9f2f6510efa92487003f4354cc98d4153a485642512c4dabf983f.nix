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
      identifier = { name = "SimpleH"; version = "1.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "marc.coiffier@gmail.com";
      author = "Marc Coiffier";
      homepage = "";
      url = "";
      synopsis = "A light, clean and powerful Haskell utility library";
      description = "SimpleH is a Prelude complement that defines a few very\nuseful abstractions, such as Monad transformers, Lenses, parser\ncombinators, reactive events and a few others.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cpu" or (errorHandler.buildDepError "cpu"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }