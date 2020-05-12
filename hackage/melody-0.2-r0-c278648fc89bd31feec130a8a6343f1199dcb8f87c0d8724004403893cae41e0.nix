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
      specVersion = "1.10";
      identifier = { name = "melody"; version = "0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "danny.gratzer@gmail.com";
      author = "Danny Gratzer";
      homepage = "";
      url = "";
      synopsis = "A functional scripting language";
      description = "A scripting language meant to replace\nshell modeled after Joy.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."ParsecTools" or (errorHandler.buildDepError "ParsecTools"))
          ];
        buildable = true;
        };
      exes = {
        "imelody" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."melody" or (errorHandler.buildDepError "melody"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-melody" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."melody" or (errorHandler.buildDepError "melody"))
            ];
          buildable = true;
          };
        };
      };
    }