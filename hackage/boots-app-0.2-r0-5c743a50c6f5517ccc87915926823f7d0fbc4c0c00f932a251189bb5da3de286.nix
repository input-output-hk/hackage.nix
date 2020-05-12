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
      identifier = { name = "boots-app"; version = "0.2"; };
      license = "MIT";
      copyright = "2019 Daniel YU";
      maintainer = "leptonyu@gmail.com";
      author = "Daniel YU";
      homepage = "https://github.com/leptonyu/boots#readme";
      url = "";
      synopsis = "Factory for quickly building an application";
      description = "A quick out-of-box factory using to build application with many useful builtin components based on [boots](https://hackage.haskell.org/package/boots).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."boots" or (errorHandler.buildDepError "boots"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
          (hsPkgs."menshen" or (errorHandler.buildDepError "menshen"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."salak" or (errorHandler.buildDepError "salak"))
          (hsPkgs."salak-yaml" or (errorHandler.buildDepError "salak-yaml"))
          (hsPkgs."splitmix" or (errorHandler.buildDepError "splitmix"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "demo-app" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."boots-app" or (errorHandler.buildDepError "boots-app"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }