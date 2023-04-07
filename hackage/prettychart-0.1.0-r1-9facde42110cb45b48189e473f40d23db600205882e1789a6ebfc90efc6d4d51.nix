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
      specVersion = "2.4";
      identifier = { name = "prettychart"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Tony Day (c) 2023";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/prettychart#readme";
      url = "";
      synopsis = "Pretty print charts from ghci.";
      description = "Serve and print charts from ghci, with automatic formatting.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."box" or (errorHandler.buildDepError "box"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."chart-svg" or (errorHandler.buildDepError "chart-svg"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."flatparse" or (errorHandler.buildDepError "flatparse"))
          (hsPkgs."formatn" or (errorHandler.buildDepError "formatn"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."mealy" or (errorHandler.buildDepError "mealy"))
          (hsPkgs."numhask-space" or (errorHandler.buildDepError "numhask-space"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."web-rep" or (errorHandler.buildDepError "web-rep"))
          ];
        buildable = true;
        };
      };
    }