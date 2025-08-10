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
      identifier = { name = "hslua-module-system"; version = "1.2.2"; };
      license = "MIT";
      copyright = "© 2019-2025 Albert Krewinkel <tarleb@hslua.org>";
      maintainer = "tarleb@hslua.org";
      author = "Albert Krewinkel";
      homepage = "https://github.com/hslua/hslua";
      url = "";
      synopsis = "Lua module wrapper around Haskell's System module.";
      description = "Provides access to system information and\nfunctionality to Lua scripts via Haskell's `System`\nmodule.\n\nThis package is part of HsLua, a Haskell framework\nbuilt around the embeddable scripting language\n<https://lua.org Lua>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hslua-core" or (errorHandler.buildDepError "hslua-core"))
          (hsPkgs."hslua-list" or (errorHandler.buildDepError "hslua-list"))
          (hsPkgs."hslua-packaging" or (errorHandler.buildDepError "hslua-packaging"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."hslua-marshalling" or (errorHandler.buildDepError "hslua-marshalling"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      tests = {
        "test-hslua-module-system" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hslua-core" or (errorHandler.buildDepError "hslua-core"))
            (hsPkgs."hslua-list" or (errorHandler.buildDepError "hslua-list"))
            (hsPkgs."hslua-packaging" or (errorHandler.buildDepError "hslua-packaging"))
            (hsPkgs."hslua-module-system" or (errorHandler.buildDepError "hslua-module-system"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-lua" or (errorHandler.buildDepError "tasty-lua"))
          ];
          buildable = true;
        };
      };
    };
  }