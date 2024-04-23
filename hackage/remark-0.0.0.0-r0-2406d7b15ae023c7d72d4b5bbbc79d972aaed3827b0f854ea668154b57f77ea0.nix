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
      identifier = { name = "remark"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Oleks";
      maintainer = "oleks@oleks.info";
      author = "Oleks";
      homepage = "https://github.com/oleks/remark#readme";
      url = "";
      synopsis = "A DSL for marking student work";
      description = "Please see README.org";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."GenericPretty" or (errorHandler.buildDepError "GenericPretty"))
        ];
        buildable = true;
      };
      exes = {
        "remark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."remark" or (errorHandler.buildDepError "remark"))
            (hsPkgs."GenericPretty" or (errorHandler.buildDepError "GenericPretty"))
          ];
          buildable = true;
        };
      };
      tests = {
        "remark-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."remark" or (errorHandler.buildDepError "remark"))
            (hsPkgs."GenericPretty" or (errorHandler.buildDepError "GenericPretty"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
          ];
          buildable = true;
        };
      };
    };
  }