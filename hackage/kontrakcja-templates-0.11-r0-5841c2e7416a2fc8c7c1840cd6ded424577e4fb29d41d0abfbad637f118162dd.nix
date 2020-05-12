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
      identifier = { name = "kontrakcja-templates"; version = "0.11"; };
      license = "BSD-3-Clause";
      copyright = "Scrive AB";
      maintainer = "Bartek &#262;wik&#322;owski <bartek@scrive.com>";
      author = "Scrive AB";
      homepage = "https://github.com/scrive/kontrakcja-templates";
      url = "";
      synopsis = "Utilities for working with many HStringTemplate templates from files.";
      description = "This library adds support for working with multiple templates in a single\nfile, and .json files containing a mapping from template names to multiple\ntemplate versions (e.g. for translations).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HStringTemplate" or (errorHandler.buildDepError "HStringTemplate"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."html" or (errorHandler.buildDepError "html"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          ];
        buildable = true;
        };
      };
    }