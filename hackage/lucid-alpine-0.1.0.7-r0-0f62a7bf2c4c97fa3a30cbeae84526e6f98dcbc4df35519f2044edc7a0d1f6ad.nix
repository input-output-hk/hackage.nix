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
      specVersion = "1.12";
      identifier = { name = "lucid-alpine"; version = "0.1.0.7"; };
      license = "BSD-3-Clause";
      copyright = "2022 Monadic Systems LLC";
      maintainer = "tech@monadic.systems";
      author = "Monadic Systems LLC";
      homepage = "https://github.com/MonadicSystems/lucid-alpine#readme";
      url = "";
      synopsis = "Use Alpine.js in your lucid templates";
      description = "Please see the README on GitHub at <https://github.com/MonadicSystems/lucid-alpine#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "lucid-alpine-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
            (hsPkgs."lucid-alpine" or (errorHandler.buildDepError "lucid-alpine"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "lucid-alpine-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
            (hsPkgs."lucid-alpine" or (errorHandler.buildDepError "lucid-alpine"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }