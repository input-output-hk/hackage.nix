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
      identifier = { name = "docker-build-cacher"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Seatgeek";
      maintainer = "lorenzo@seatgeek.com";
      author = "Jose Lorenzo Rodriguez";
      homepage = "";
      url = "";
      synopsis = "Builds a services with docker and caches all of its intermediate stages";
      description = "A CLI tool to speed up multi-stage docker file builds by caching intermediate\nstages separately, so the can be used in successive builds.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "docker-build-cacher" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            (hsPkgs."language-dockerfile" or (errorHandler.buildDepError "language-dockerfile"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          ];
          buildable = true;
        };
      };
    };
  }