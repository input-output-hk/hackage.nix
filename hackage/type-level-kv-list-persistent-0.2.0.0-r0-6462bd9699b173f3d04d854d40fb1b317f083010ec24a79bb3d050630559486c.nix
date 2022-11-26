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
      identifier = {
        name = "type-level-kv-list-persistent";
        version = "0.2.0.0";
        };
      license = "MIT";
      copyright = "2022 Sakura-chan the Goat";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Sakura-chan the Goat";
      homepage = "https://github.com/arowM/type-level-kv-list-persistent#readme";
      url = "";
      synopsis = "Make Persistent Raw SQL handy with type-level-kv-list";
      description = "This library provides a way to use type-level-kv-list with Esqueleto.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."type-level-kv-list" or (errorHandler.buildDepError "type-level-kv-list"))
          ];
        buildable = true;
        };
      };
    }