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
      identifier = { name = "hslua-module-zip"; version = "1.1.4"; };
      license = "MIT";
      copyright = "© 2020-2025 Albert Krewinkel";
      maintainer = "Albert Krewinkel <tarleb@hslua.org>";
      author = "Albert Krewinkel";
      homepage = "https://hslua.org/";
      url = "";
      synopsis = "Lua module to work with file zips.";
      description = "Module with function for creating, modifying, and\nextracting files from zip archives.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hslua-core" or (errorHandler.buildDepError "hslua-core"))
          (hsPkgs."hslua-packaging" or (errorHandler.buildDepError "hslua-packaging"))
          (hsPkgs."hslua-list" or (errorHandler.buildDepError "hslua-list"))
          (hsPkgs."hslua-marshalling" or (errorHandler.buildDepError "hslua-marshalling"))
          (hsPkgs."hslua-typing" or (errorHandler.buildDepError "hslua-typing"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
        ];
        buildable = true;
      };
      tests = {
        "hslua-module-zip-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hslua-core" or (errorHandler.buildDepError "hslua-core"))
            (hsPkgs."hslua-packaging" or (errorHandler.buildDepError "hslua-packaging"))
            (hsPkgs."hslua-module-zip" or (errorHandler.buildDepError "hslua-module-zip"))
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