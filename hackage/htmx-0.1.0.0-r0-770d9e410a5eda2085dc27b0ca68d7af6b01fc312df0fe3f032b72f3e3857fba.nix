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
      specVersion = "3.6";
      identifier = { name = "htmx"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jonathanlorimer@pm.me";
      author = "Jonathan Lorimer";
      homepage = "";
      url = "";
      synopsis = "Use htmx with various haskell libraries";
      description = "Please see the README on GitHub at <https://github.com/JonathanLorimer/htmx#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }