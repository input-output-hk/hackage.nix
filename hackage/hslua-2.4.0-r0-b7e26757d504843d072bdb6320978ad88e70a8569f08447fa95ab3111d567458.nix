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
    flags = { executable = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hslua"; version = "2.4.0"; };
      license = "MIT";
      copyright = "© 2007–2012 Gracjan Polak;\n© 2012–2016 Ömer Sinan Ağacan;\n© 2017-2024 Albert Krewinkel";
      maintainer = "tarleb@hslua.org";
      author = "Albert Krewinkel, Gracjan Polak, Ömer Sinan Ağacan";
      homepage = "https://hslua.org/";
      url = "";
      synopsis = "Bindings to Lua, an embeddable scripting language";
      description = "HsLua provides wrappers and helpers\nto bridge Haskell and <https://www.lua.org/ Lua>.\n\nIt builds upon the /lua/ package, which allows to bundle\na Lua interpreter with a Haskell program.\n\nExample programs can be found in the @hslua-examples@\nsubdir of the project\n<https://github.com/hslua/hslua repository>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hslua-aeson" or (errorHandler.buildDepError "hslua-aeson"))
          (hsPkgs."hslua-classes" or (errorHandler.buildDepError "hslua-classes"))
          (hsPkgs."hslua-core" or (errorHandler.buildDepError "hslua-core"))
          (hsPkgs."hslua-marshalling" or (errorHandler.buildDepError "hslua-marshalling"))
          (hsPkgs."hslua-objectorientation" or (errorHandler.buildDepError "hslua-objectorientation"))
          (hsPkgs."hslua-packaging" or (errorHandler.buildDepError "hslua-packaging"))
          (hsPkgs."hslua-typing" or (errorHandler.buildDepError "hslua-typing"))
        ];
        buildable = true;
      };
      exes = {
        "hslua" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ pkgs.lib.optionals (flags.executable) [
            (hsPkgs."hslua-cli" or (errorHandler.buildDepError "hslua-cli"))
            (hsPkgs."hslua-core" or (errorHandler.buildDepError "hslua-core"))
            (hsPkgs."hslua-packaging" or (errorHandler.buildDepError "hslua-packaging"))
            (hsPkgs."hslua-module-path" or (errorHandler.buildDepError "hslua-module-path"))
            (hsPkgs."hslua-module-system" or (errorHandler.buildDepError "hslua-module-system"))
            (hsPkgs."hslua-module-text" or (errorHandler.buildDepError "hslua-module-text"))
            (hsPkgs."hslua-module-version" or (errorHandler.buildDepError "hslua-module-version"))
            (hsPkgs."hslua-module-zip" or (errorHandler.buildDepError "hslua-module-zip"))
          ];
          buildable = if flags.executable then true else false;
        };
      };
      tests = {
        "test-hslua" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hslua" or (errorHandler.buildDepError "hslua"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."hslua-core" or (errorHandler.buildDepError "hslua-core"))
            (hsPkgs."tasty-hslua" or (errorHandler.buildDepError "tasty-hslua"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }