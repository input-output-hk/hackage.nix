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
      identifier = { name = "htmx-servant"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jonathanlorimer@pm.me";
      author = "Jonathan Lorimer";
      homepage = "";
      url = "";
      synopsis = "Use htmx with servant";
      description = "Please see the README on GitHub at <https://github.com/JonathanLorimer/htmx#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."htmx" or (errorHandler.buildDepError "htmx"))
          (hsPkgs."htmx-lucid" or (errorHandler.buildDepError "htmx-lucid"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }