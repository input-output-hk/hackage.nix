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
      specVersion = "1.2";
      identifier = { name = "nlp-scores"; version = "0.6.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "grzegorz.chrupala@gmail.com";
      author = "Grzegorz Chrupala";
      homepage = "https://bitbucket.org/gchrupala/lingo";
      url = "";
      synopsis = "Scoring functions commonly used for evaluation in NLP and IR";
      description = "Scoring functions commonly used for evaluation in NLP and IR      ";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
        ];
        buildable = true;
      };
    };
  }