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
      specVersion = "1.8";
      identifier = { name = "google-html5-slide"; version = "2011.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012, Hideyuki Tanaka";
      maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
      author = "Hideyuki Tanaka";
      homepage = "";
      url = "";
      synopsis = "Google HTML5 Slide generator";
      description = "Google HTML5 Slide <https://code.google.com/p/html5slides/> generator\nfor Pandoc documents";
      buildType = "Simple";
      };
    components = {
      exes = {
        "google-html5-slide" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
            (hsPkgs."shakespeare-css" or (errorHandler.buildDepError "shakespeare-css"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }