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
      identifier = { name = "hslua"; version = "2.1.0"; };
      license = "MIT";
      copyright = "© 2007–2012 Gracjan Polak;\n© 2012–2016 Ömer Sinan Ağacan;\n© 2017-2022 Albert Krewinkel";
      maintainer = "albert+hslua@zeitkraut.de";
      author = "Albert Krewinkel, Gracjan Polak, Ömer Sinan Ağacan";
      homepage = "https://hslua.org/";
      url = "";
      synopsis = "Bindings to Lua, an embeddable scripting language";
      description = "HsLua provides wrappers and helpers\nto bridge Haskell and <https://www.lua.org/ Lua>.\n\nIt builds upon the /lua/ package, which allows to bundle\na Lua interpreter with a Haskell program.\n\n<https://github.com/hslua/hslua-examples Example programs>\nare available in a separate repository.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."hslua-core" or (errorHandler.buildDepError "hslua-core"))
          (hsPkgs."hslua-classes" or (errorHandler.buildDepError "hslua-classes"))
          (hsPkgs."hslua-marshalling" or (errorHandler.buildDepError "hslua-marshalling"))
          (hsPkgs."hslua-objectorientation" or (errorHandler.buildDepError "hslua-objectorientation"))
          (hsPkgs."hslua-packaging" or (errorHandler.buildDepError "hslua-packaging"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test-hslua" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."hslua-core" or (errorHandler.buildDepError "hslua-core"))
            (hsPkgs."hslua-classes" or (errorHandler.buildDepError "hslua-classes"))
            (hsPkgs."hslua-marshalling" or (errorHandler.buildDepError "hslua-marshalling"))
            (hsPkgs."hslua-objectorientation" or (errorHandler.buildDepError "hslua-objectorientation"))
            (hsPkgs."hslua-packaging" or (errorHandler.buildDepError "hslua-packaging"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hslua" or (errorHandler.buildDepError "hslua"))
            (hsPkgs."tasty-hslua" or (errorHandler.buildDepError "tasty-hslua"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }