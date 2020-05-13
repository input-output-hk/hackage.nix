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
      identifier = { name = "haskell-names"; version = "0.6.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Philipp Schuster";
      author = "Philipp Schuster, Roman Cheplyaka, Lennart Augustsson";
      homepage = "http://documentup.com/haskell-suite/haskell-names";
      url = "";
      synopsis = "Name resolution library for Haskell";
      description = "This package takes modules parsed with `haskell-src-exts`, resolves used names and annotates the parsed module with scoping information. ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-lens-light" or (errorHandler.buildDepError "data-lens-light"))
          (hsPkgs."traverse-with-class" or (errorHandler.buildDepError "traverse-with-class"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."traverse-with-class" or (errorHandler.buildDepError "traverse-with-class"))
            (hsPkgs."haskell-names" or (errorHandler.buildDepError "haskell-names"))
            ];
          buildable = true;
          };
        };
      };
    }