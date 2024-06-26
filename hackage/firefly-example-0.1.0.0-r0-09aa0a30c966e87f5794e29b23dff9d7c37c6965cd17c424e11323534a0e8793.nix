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
      identifier = { name = "firefly-example"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/Firefly#readme";
      url = "";
      synopsis = "A simple example using Firefly";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "firefly-example-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."firefly" or (errorHandler.buildDepError "firefly"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          ];
          buildable = true;
        };
      };
    };
  }