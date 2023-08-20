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
      specVersion = "1.12";
      identifier = { name = "exception-via"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Matt Parsons";
      maintainer = "parsonsmatt@gmail.com";
      author = "Matt Parsons";
      homepage = "https://github.com/parsonsmatt/exception-via#readme";
      url = "";
      synopsis = "DerivingVia for your hierarchical exceptions";
      description = "Please see the README on GitHub at <https://github.com/parsonsmatt/exception-via#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }