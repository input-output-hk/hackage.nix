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
      specVersion = "2.2";
      identifier = { name = "hslua-objectorientation"; version = "2.4.0"; };
      license = "MIT";
      copyright = "© 2021-2024 Albert Krewinkel";
      maintainer = "tarleb@hslua.org";
      author = "Albert Krewinkel";
      homepage = "https://hslua.org/";
      url = "";
      synopsis = "Object orientation tools for HsLua";
      description = "Expose Haskell objects to Lua with an object oriented\ninterface.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hslua-core" or (errorHandler.buildDepError "hslua-core"))
          (hsPkgs."hslua-marshalling" or (errorHandler.buildDepError "hslua-marshalling"))
          (hsPkgs."hslua-typing" or (errorHandler.buildDepError "hslua-typing"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "test-hslua-objectorientation" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hslua-core" or (errorHandler.buildDepError "hslua-core"))
            (hsPkgs."hslua-marshalling" or (errorHandler.buildDepError "hslua-marshalling"))
            (hsPkgs."hslua-typing" or (errorHandler.buildDepError "hslua-typing"))
            (hsPkgs."hslua-objectorientation" or (errorHandler.buildDepError "hslua-objectorientation"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hslua" or (errorHandler.buildDepError "tasty-hslua"))
          ];
          buildable = true;
        };
      };
    };
  }