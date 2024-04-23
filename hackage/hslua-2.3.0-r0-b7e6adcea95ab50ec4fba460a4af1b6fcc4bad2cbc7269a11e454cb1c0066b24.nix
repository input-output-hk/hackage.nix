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
      identifier = { name = "hslua"; version = "2.3.0"; };
      license = "MIT";
      copyright = "© 2007–2012 Gracjan Polak;\n© 2012–2016 Ömer Sinan Ağacan;\n© 2017-2023 Albert Krewinkel";
      maintainer = "tarleb@hslua.org";
      author = "Albert Krewinkel, Gracjan Polak, Ömer Sinan Ağacan";
      homepage = "https://hslua.org/";
      url = "";
      synopsis = "Bindings to Lua, an embeddable scripting language";
      description = "HsLua provides wrappers and helpers\nto bridge Haskell and <https://www.lua.org/ Lua>.\n\nIt builds upon the /lua/ package, which allows to bundle\na Lua interpreter with a Haskell program.\n\nExample programs are can be found in the @hslua-examples@\nsubdir of the project\n<https://github.com/hslua/hslua repository>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."hslua-aeson" or (errorHandler.buildDepError "hslua-aeson"))
          (hsPkgs."hslua-core" or (errorHandler.buildDepError "hslua-core"))
          (hsPkgs."hslua-classes" or (errorHandler.buildDepError "hslua-classes"))
          (hsPkgs."hslua-marshalling" or (errorHandler.buildDepError "hslua-marshalling"))
          (hsPkgs."hslua-objectorientation" or (errorHandler.buildDepError "hslua-objectorientation"))
          (hsPkgs."hslua-packaging" or (errorHandler.buildDepError "hslua-packaging"))
          (hsPkgs."hslua-typing" or (errorHandler.buildDepError "hslua-typing"))
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
            (hsPkgs."hslua-aeson" or (errorHandler.buildDepError "hslua-aeson"))
            (hsPkgs."hslua-core" or (errorHandler.buildDepError "hslua-core"))
            (hsPkgs."hslua-classes" or (errorHandler.buildDepError "hslua-classes"))
            (hsPkgs."hslua-marshalling" or (errorHandler.buildDepError "hslua-marshalling"))
            (hsPkgs."hslua-objectorientation" or (errorHandler.buildDepError "hslua-objectorientation"))
            (hsPkgs."hslua-packaging" or (errorHandler.buildDepError "hslua-packaging"))
            (hsPkgs."hslua-typing" or (errorHandler.buildDepError "hslua-typing"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hslua" or (errorHandler.buildDepError "hslua"))
            (hsPkgs."lua" or (errorHandler.buildDepError "lua"))
            (hsPkgs."lua-arbitrary" or (errorHandler.buildDepError "lua-arbitrary"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."tasty-hslua" or (errorHandler.buildDepError "tasty-hslua"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }