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
      identifier = { name = "yesod-text-markdown"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "miffoljud@gmail.com";
      author = "Arash Rouhani";
      homepage = "";
      url = "";
      synopsis = "Yesod support for Text.Markdown.";
      description = "Use Text.Markdown in a typical yesod project.\nThis module contains instances related to persistence,\neven though it isn't tightly coupled to yesod.\n\nThis package is different from the yesod-markdown package\nwhich uses the pandoc renderer for markdown. The main\nadvantages of having Text.Markdown as underlying renderer\nis the much smaller dependencies and the permissiver\nlicense.  See\n<https://github.com/pbrisbin/yesod-markdown> and\n<https://github.com/snoyberg/markdown>.\n\nThis package intentionally tries to be like\nyesod-markdown, so switching between the markdown backends\nshould be easy.\n\nIf you wonder why the haddocks only show a few exports,\nit's because it doesn't show exporting of instances which\nis most of what this package is about.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."markdown" or (errorHandler.buildDepError "markdown"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
          (hsPkgs."yesod-persistent" or (errorHandler.buildDepError "yesod-persistent"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
        ];
        buildable = true;
      };
    };
  }