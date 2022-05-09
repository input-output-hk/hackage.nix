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
      identifier = { name = "lucid2"; version = "0.0.20220509"; };
      license = "BSD-3-Clause";
      copyright = "2014-2022 Chris Done";
      maintainer = "lucid2@chrisdone.com";
      author = "Chris Done";
      homepage = "https://github.com/chrisdone/lucid";
      url = "";
      synopsis = "Clear to write, read and edit DSL for HTML";
      description = "Clear to write, read and edit DSL for HTML.\n\n* Names are consistent, and do not conflict with base or are keywords (all have suffix @_@)\n\n* Same combinator can be used for attributes and elements (e.g. 'style_')\n\n* For more, read <https://chrisdone.com/posts/lucid the blog post>\n\nSee the \"Lucid\" module for more documentation.\n\nThis package is the newer version of lucid.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lucid2" or (errorHandler.buildDepError "lucid2"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }