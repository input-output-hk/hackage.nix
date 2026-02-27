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
      identifier = { name = "railroad"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mastratisi@proton.me";
      author = "Frederik Kallstrup Mastratisi";
      homepage = "https://github.com/mastratisi/railroad";
      url = "";
      synopsis = "A railway oriented mini-DSL for unified error handling.";
      description = "A railway oriented mini-DSL for handling and interpreting error states \nand cardinality checks across diverse failure types in a unified way.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."validation" or (errorHandler.buildDepError "validation"))
        ];
        buildable = true;
      };
      tests = {
        "railroad-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."validation" or (errorHandler.buildDepError "validation"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."railroad" or (errorHandler.buildDepError "railroad"))
          ];
          buildable = true;
        };
      };
    };
  }