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
      identifier = { name = "htmx-lucid"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "jonathanlorimer@pm.me";
      author = "Jonathan Lorimer";
      homepage = "";
      url = "";
      synopsis = "Use htmx with lucid";
      description = "Please see the README on GitHub at <https://github.com/JonathanLorimer/htmx#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."htmx" or (errorHandler.buildDepError "htmx"))
          (hsPkgs."lucid2" or (errorHandler.buildDepError "lucid2"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }