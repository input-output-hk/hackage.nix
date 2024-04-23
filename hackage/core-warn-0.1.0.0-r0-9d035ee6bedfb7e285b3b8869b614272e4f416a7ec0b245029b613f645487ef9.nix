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
      identifier = { name = "core-warn"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathan_lorimer@mac.com";
      author = "Jonathan Lorimer";
      homepage = "";
      url = "";
      synopsis = "\"Provide warnings for unexpected Core generation\"";
      description = "Please see the README on GitHub at <https://github.com/JonathanLorimer/core-warn#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."containers-good-graph" or (errorHandler.buildDepError "containers-good-graph"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."core-warn" or (errorHandler.buildDepError "core-warn"))
          ];
          buildable = true;
        };
      };
    };
  }