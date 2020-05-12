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
    flags = { test_export = false; test_coffee = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "shakespeare-js"; version = "1.0.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/shakespearean-templates";
      url = "";
      synopsis = "Stick your haskell variables into javascript/coffeescript at compile time.";
      description = "Shakespeare is a template family for type-safe, efficient templates with simple variable interpolation . Shakespeare templates can be used inline with a quasi-quoter or in an external file. Shakespeare interpolates variables according to the type being inserted.\nIn this case, the variable type needs a ToJavascript instance.\n\nThere is also shakespeare-coffeescript for coffeescript templates. Coffescript is a language that compiles down to javascript. It expects a coffeescript compiler in your path, and variable should be a ToCoffee instance. And we even have a Roy template for the adventorous FP addicts.\n\nPlease see http://www.yesodweb.com/book/shakespearean-templates for a more thorough description and examples\n\nshakespeare-js was originally called julius, and shakespeare originated from the hamlet template package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."shakespeare-js" or (errorHandler.buildDepError "shakespeare-js"))
            (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }