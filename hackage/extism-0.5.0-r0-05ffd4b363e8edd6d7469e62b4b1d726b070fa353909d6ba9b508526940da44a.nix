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
      identifier = { name = "extism"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "oss@extism.org";
      author = "Extism authors";
      homepage = "";
      url = "";
      synopsis = "Extism bindings";
      description = "Bindings to Extism, the universal plugin system";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."extism-manifest" or (errorHandler.buildDepError "extism-manifest"))
        ];
        libs = [ (pkgs."extism" or (errorHandler.sysDepError "extism")) ];
        buildable = true;
      };
      tests = {
        "extism-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extism" or (errorHandler.buildDepError "extism"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
        "extism-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extism" or (errorHandler.buildDepError "extism"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = true;
        };
      };
    };
  }