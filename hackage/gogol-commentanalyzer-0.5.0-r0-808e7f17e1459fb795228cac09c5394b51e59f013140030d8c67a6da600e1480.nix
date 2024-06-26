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
      identifier = { name = "gogol-commentanalyzer"; version = "0.5.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2015-2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/gogol";
      url = "";
      synopsis = "Google Perspective Comment Analyzer SDK.";
      description = "The Perspective Comment Analyzer API provides information about the\npotential impact of a comment on a conversation (e.g. it can provide a\nscore for the \\\"toxicity\\\" of a comment). Users can leverage the\n\\\"SuggestCommentScore\\\" method to submit corrections to improve\nPerspective over time. Users can set the \\\"doNotStore\\\" flag to ensure\nthat all submitted comments are automatically deleted after scores are\nreturned.\n\n/Warning:/ This is an experimental prototype/preview release which is still\nunder exploratory development and not intended for public use, caveat emptor!\n\nThis library is compatible with version @v1alpha1@\nof the API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."gogol-core" or (errorHandler.buildDepError "gogol-core"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }