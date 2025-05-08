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
    flags = { field-selectors = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "gogol-commentanalyzer"; version = "1.0.0"; };
      license = "MPL-2.0";
      copyright = "Copyright (c) 2015-2025 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay+gogol@gmail.com>, Toni Cebrián <toni@tonicebrian.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/gogol";
      url = "";
      synopsis = "Google Perspective Comment Analyzer SDK.";
      description = "The Perspective Comment Analyzer API provides information about the potential impact of a comment on a conversation (e.g. it can provide a score for the \\\"toxicity\\\" of a comment). Users can leverage the \\\"SuggestCommentScore\\\" method to submit corrections to improve Perspective over time. Users can set the \\\"doNotStore\\\" flag to ensure that all submitted comments are automatically deleted after scores are returned.\n\n/Warning:/ This is an experimental prototype/preview release which is still\nunder exploratory development and not intended for public use, caveat emptor!\n\nThis library is compatible with version @v1alpha1@\nof the API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."gogol-core" or (errorHandler.buildDepError "gogol-core"))
        ];
        buildable = true;
      };
    };
  }