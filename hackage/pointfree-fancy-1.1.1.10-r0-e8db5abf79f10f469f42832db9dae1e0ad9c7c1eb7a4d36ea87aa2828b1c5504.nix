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
      specVersion = "2.0";
      identifier = { name = "pointfree-fancy"; version = "1.1.1.10"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Vanessa McHale <vamchale@gmail.com>";
      author = "Thomas Jäger";
      homepage = "";
      url = "";
      synopsis = "Tool for refactoring expressions into pointfree form";
      description = "The pointfree tool is a standalone command-line version of the pl\nplugin for lambdabot.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pointfree-fancy".components.sublibs.pointfree-internal or (errorHandler.buildDepError "pointfree-fancy:pointfree-internal"))
          ];
        buildable = true;
        };
      sublibs = {
        "pointfree-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      exes = {
        "pointfree" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pointfree-fancy".components.sublibs.pointfree-internal or (errorHandler.buildDepError "pointfree-fancy:pointfree-internal"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pointfree-fancy".components.sublibs.pointfree-internal or (errorHandler.buildDepError "pointfree-fancy:pointfree-internal"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }