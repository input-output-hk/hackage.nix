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
      identifier = { name = "options"; version = "1.2.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Chris Martin <chris@typeclasses.com>";
      author = "John Millikin <john@john-millikin.com>";
      homepage = "https://github.com/typeclasses/options/";
      url = "";
      synopsis = "Powerful and easy command-line option parser";
      description = "Lets library and application developers easily work with command-line options.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
          (hsPkgs."options".components.sublibs.options-internal or (errorHandler.buildDepError "options:options-internal"))
        ];
        buildable = true;
      };
      sublibs = {
        "options-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
          ];
          buildable = true;
        };
      };
      tests = {
        "options_tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."options" or (errorHandler.buildDepError "options"))
            (hsPkgs."options".components.sublibs.options-internal or (errorHandler.buildDepError "options:options-internal"))
            (hsPkgs."patience" or (errorHandler.buildDepError "patience"))
          ];
          buildable = true;
        };
      };
    };
  }