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
      identifier = { name = "dixi"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Liam O'Connor, 2015";
      maintainer = "liamoc@cse.unsw.edu.au";
      author = "Liam O'Connor";
      homepage = "https://github.com/liamoc/dixi";
      url = "";
      synopsis = "A wiki implemented with a firm theoretical foundation.";
      description = "This project is a simple wiki developed based on a\nfirm theoretical foundation.\n\nDocuments are not stored directly, but as a composition\ntree of patches to an initial empty document. As our\npatches support operational transform, edits can be\nmade to any version of each document and they are\ntransformed to be applied to the latest version.\n\nThis also makes it easy to use the group structure of\npatches to be able to revert changes (or the composition\nof several changes) from deep in a document's history and\npreserve every other change.\n\nRight now the wiki doesn't support many bells and whistles,\nsuch as administrator control, configurability, or user accounts,\nbut they're coming.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "dixi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."composition-tree" or (errorHandler.buildDepError "composition-tree"))
            (hsPkgs."patches-vector" or (errorHandler.buildDepError "patches-vector"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
            (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."servant-blaze" or (errorHandler.buildDepError "servant-blaze"))
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
            (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }