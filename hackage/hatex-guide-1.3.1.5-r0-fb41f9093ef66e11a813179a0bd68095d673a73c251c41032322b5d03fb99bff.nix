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
      specVersion = "1.6";
      identifier = { name = "hatex-guide"; version = "1.3.1.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Díaz (dhelta `dot` diaz `at` gmail `dot` com)";
      author = "Daniel Díaz";
      homepage = "";
      url = "";
      synopsis = "HaTeX User's Guide.";
      description = "The HaTeX User's Guide is a manual explaining the\nHaTeX library (<http://hackage.haskell.org/package/HaTeX>).\nThis library can be used to output the guide in different formats.\nA compiled pdf version of the latex output can be found at\n<http://daniel-diaz.github.com/projects/hatex/hatex-guide.pdf>.\nThe online HTML version is in\n<http://daniel-diaz.github.com/projects/hatex/hatex-guide.html>.\nSee the README file (<https://github.com/Daniel-Diaz/hatex-guide/blob/master/README.md>)\nfor more details.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HaTeX" or (errorHandler.buildDepError "HaTeX"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }