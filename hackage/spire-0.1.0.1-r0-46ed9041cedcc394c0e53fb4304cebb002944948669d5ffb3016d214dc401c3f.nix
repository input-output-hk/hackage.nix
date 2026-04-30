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
      specVersion = "3.12";
      identifier = { name = "spire"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Josh Burgess <joshburgess.webdev@gmail.com>";
      author = "Josh Burgess";
      homepage = "https://github.com/joshburgess/acolyte";
      url = "";
      synopsis = "Composable service and middleware abstractions for Haskell";
      description = "A standalone, framework-agnostic library providing composable\nService and Layer abstractions. The Haskell equivalent of Rust's\ntower crate.\n.\nThis library is useful on its own; any Haskell project can use it\nfor composable middleware without depending on any web framework.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."spire" or (errorHandler.buildDepError "spire"))
          ];
          buildable = true;
        };
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."spire" or (errorHandler.buildDepError "spire"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          ];
          buildable = true;
        };
      };
    };
  }