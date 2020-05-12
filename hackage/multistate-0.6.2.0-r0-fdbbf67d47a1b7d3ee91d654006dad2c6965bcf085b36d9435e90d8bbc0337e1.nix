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
    flags = { build-example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "multistate"; version = "0.6.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Jan Bracker, Lennart Spitzner";
      maintainer = "Lennart Spitzner <lsp@informatik.uni-kiel.de>";
      author = "Jan Bracker, Lennart Spitzner";
      homepage = "https://github.com/lspitzner/multistate";
      url = "";
      synopsis = "like mtl's ReaderT / WriterT / StateT, but more than one\ncontained value/type.";
      description = "When using multiple Read\\/Write\\/State transformers in the same monad stack,\nit becomes necessary to lift the operations in order to affect a specific\ntransformer.\nUsing heterogeneous lists (and all kinds of GHC extensions magic),\nthis package provides transformers that remove that necessity:\nMultiReaderT\\/MultiWriterT\\/MultiStateT\\/MultiRWST can contain a\nheterogeneous list of values.\n\nSee the <https://github.com/lspitzner/multistate README> for\na longer description.\n\nThe latest published version contains some breaking changes.\nPlease complain if this causes problems (for future consideration).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          ];
        buildable = true;
        };
      exes = {
        "multistate-example" = {
          depends = (pkgs.lib).optionals (flags.build-example) [
            (hsPkgs."multistate" or (errorHandler.buildDepError "multistate"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = if flags.build-example then true else false;
          };
        };
      tests = {
        "multistate-test" = {
          depends = [
            (hsPkgs."multistate" or (errorHandler.buildDepError "multistate"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }