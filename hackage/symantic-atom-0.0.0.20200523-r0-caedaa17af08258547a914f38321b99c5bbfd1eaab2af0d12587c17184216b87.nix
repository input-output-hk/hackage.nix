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
      specVersion = "1.24";
      identifier = { name = "symantic-atom"; version = "0.0.0.20200523"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julien Moutinho <julm+symantic-atom@sourcephile.fr>";
      author = "Julien Moutinho <julm+symantic-atom@sourcephile.fr>";
      homepage = "";
      url = "";
      synopsis = "Library for reading and writing Atom.";
      description = "Symantics for Atom.\n\nThis is an application of <symantic-xml https://hackage.haskell.org/package/symantic-xml>\nto read or write <Atom https://tools.ietf.org/html/rfc4287>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."symantic-xml" or (errorHandler.buildDepError "symantic-xml"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."treeseq" or (errorHandler.buildDepError "treeseq"))
        ];
        buildable = true;
      };
      tests = {
        "symantic-atom-test" = {
          depends = [
            (hsPkgs."symantic-atom" or (errorHandler.buildDepError "symantic-atom"))
            (hsPkgs."symantic-xml" or (errorHandler.buildDepError "symantic-xml"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."treeseq" or (errorHandler.buildDepError "treeseq"))
          ];
          buildable = true;
        };
      };
    };
  }