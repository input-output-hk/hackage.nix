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
      identifier = { name = "extism-pdk"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "oss@dylib.so";
      author = "Extism Authors";
      homepage = "";
      url = "";
      synopsis = "Extism Plugin Development Kit";
      description = "Haskell bindings to the Extism runtime";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."extism-manifest" or (errorHandler.buildDepError "extism-manifest"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."messagepack" or (errorHandler.buildDepError "messagepack"))
          ];
        buildable = true;
        };
      exes = {
        "hello" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extism-pdk" or (errorHandler.buildDepError "extism-pdk"))
            ];
          buildable = true;
          };
        "http_get" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extism-pdk" or (errorHandler.buildDepError "extism-pdk"))
            ];
          buildable = true;
          };
        "count_vowels" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extism-pdk" or (errorHandler.buildDepError "extism-pdk"))
            ];
          buildable = true;
          };
        };
      };
    }