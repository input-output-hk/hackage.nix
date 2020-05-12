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
      identifier = { name = "twisty"; version = "0.1.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright 2011 Google Inc.";
      maintainer = "leadpipe@google.com";
      author = "Luke Blanshard";
      homepage = "";
      url = "";
      synopsis = "Simulator of twisty puzzles à la Rubik's Cube";
      description = "Library with tools for simulating Rubik's Cube and similar puzzles.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-memocombinators" or (errorHandler.buildDepError "data-memocombinators"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          ];
        buildable = true;
        };
      };
    }