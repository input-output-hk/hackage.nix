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
    flags = { production = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "rfc-env"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "smokejumperit+rfc@gmail.com";
      author = "Robert Fischer";
      homepage = "https://github.com/RobertFischer/rfc#readme";
      url = "";
      synopsis = "Environment variable support from the Robert Fischer Commons.";
      description = "Provides an opinionated and simple way to interface with environment variables,  current based on @envy@.\nThis is part of the Robert Fischer commons, which are the @rfc-@ family of packages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."envy" or (errorHandler.buildDepError "envy"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."rfc-prelude" or (errorHandler.buildDepError "rfc-prelude"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }