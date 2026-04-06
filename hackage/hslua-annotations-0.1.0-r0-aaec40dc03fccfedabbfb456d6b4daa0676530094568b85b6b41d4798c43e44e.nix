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
      specVersion = "3.0";
      identifier = { name = "hslua-annotations"; version = "0.1.0"; };
      license = "(MIT OR Apache-2.0)";
      copyright = "";
      maintainer = "sondre@eons.io";
      author = "Sondre Aasemoen";
      homepage = "https://github.com/sondr3/hslua-annotations";
      url = "";
      synopsis = "A type annotation generator for HSLua";
      description = "A type annotation generator for HSLua targetting LuaLS and EmmyLua";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hslua-core" or (errorHandler.buildDepError "hslua-core"))
          (hsPkgs."hslua-packaging" or (errorHandler.buildDepError "hslua-packaging"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "hslua-annotations-golden" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hslua-core" or (errorHandler.buildDepError "hslua-core"))
            (hsPkgs."hslua-packaging" or (errorHandler.buildDepError "hslua-packaging"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hslua-annotations" or (errorHandler.buildDepError "hslua-annotations"))
            (hsPkgs."hslua-marshalling" or (errorHandler.buildDepError "hslua-marshalling"))
            (hsPkgs."hslua-module-path" or (errorHandler.buildDepError "hslua-module-path"))
            (hsPkgs."hslua-module-version" or (errorHandler.buildDepError "hslua-module-version"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
          ];
          buildable = true;
        };
      };
    };
  }