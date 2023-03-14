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
      identifier = { name = "hslua-examples"; version = "2.0.2"; };
      license = "MIT";
      copyright = "© 2020–2023 Albert Krewinkel";
      maintainer = "Albert Krewinkel <tarleb@hslua.org>";
      author = "Albert Krewinkel";
      homepage = "https://hslua.org/";
      url = "";
      synopsis = "Examples of how to combine Haskell and Lua.";
      description = "The HsLua modules provide wrappers of Lua language\ninterpreter as described on the official\n<https://www.lua.org/ Lua website).\n\nThis package contains example programs, demonstrating\nthe possibility to work with Lua from within Haskell\nand /vice versa/.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "print-version" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lua" or (errorHandler.buildDepError "lua"))
            ];
          buildable = true;
          };
        "run-lua" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hslua" or (errorHandler.buildDepError "hslua"))
            ];
          buildable = true;
          };
        "wishlist" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hslua" or (errorHandler.buildDepError "hslua"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        "factorial" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hslua" or (errorHandler.buildDepError "hslua"))
            ];
          buildable = true;
          };
        "low-level-factorial" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lua" or (errorHandler.buildDepError "lua"))
            ];
          buildable = true;
          };
        };
      };
    }