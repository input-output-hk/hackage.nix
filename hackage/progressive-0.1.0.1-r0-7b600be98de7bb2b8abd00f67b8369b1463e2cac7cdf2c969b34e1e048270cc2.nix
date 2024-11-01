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
      identifier = { name = "progressive"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Grzegorz Chrupała <g.chrupala@uvt.nl>";
      author = "Grzegorz Chrupała";
      homepage = "https://bitbucket.org/gchrupala/progression";
      url = "";
      synopsis = "Multilabel classification model which learns sequentially (online).";
      description = "Progressive is a multilabel classification model which learns\nsequentially (online). The set of labels need not be known in advance:\nthe learner keeps a constantly updated set of top N most frequent\nlabels seen so far and predicts labels from this set.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "progressive" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
          buildable = true;
        };
      };
    };
  }