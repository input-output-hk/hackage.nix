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
      identifier = { name = "tuple-fields"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023, David Binder";
      maintainer = "david.binder@uni-tuebingen.de";
      author = "David Binder";
      homepage = "https://github.com/BinderDavid/tuple-fields";
      url = "";
      synopsis = "Access tuple fields using record dot syntax";
      description = "This library provides orphan HasField instances for tuples to enable access to tuple fields.\n(1,2,3)._2\n(True, False,2)._3";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "gen-source" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tuple-fields-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tuple-fields" or (errorHandler.buildDepError "tuple-fields"))
          ];
          buildable = true;
        };
      };
    };
  }