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
    flags = { build-test = false; build-example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "multistate"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Jan Bracker, Lennart Spitzner";
      maintainer = "Lennart Spitzner <lsp@informatik.uni-kiel.de>";
      author = "Jan Bracker, Lennart Spitzner";
      homepage = "https://github.com/lspitzner/multistate";
      url = "";
      synopsis = "like mtl's ReaderT/StateT, but more than one contained value/type.";
      description = "\n== Introduction\n\nWhen using multiple ReaderT's or StateT's in the same monad stack, it becomes\nnecessary to lift the operations in order to affect a specific transformer.\nUsing heterogenous lists (type level functions), a GADT and a corresponding\ntype class, this package provides transformers that remove that necessity:\nMultiReaderT/MultiStateT can contain a heterogenous list of values.\n\nThe type inferred for the getter/setter determines which value is\nread/written.\n\n== Example\n\n> simpleExample :: IO ()\n> simpleExample = evalMultiStateT\n>               $ withMultiState 'H'\n>               $ withMultiState \"ello, World!\"\n>               $ do\n>   -- the monad here is MultiStateT '[String, Char] IO\n>   let combinedPrint = do       -- no type signature necessary\n>         c  <- mGet             -- type of mGet inferred to be m Char\n>         cs <- mGet             --              inferred to be m String\n>         lift $ putStrLn (c:cs)\n>   combinedPrint\n>   mSet 'J'                     -- similarly for the setter\n>   combinedPrint\n\nThe output is:\n\n> Hello, World!\n> Jello, World!\n\n( you can find both this and a more complex example\nin an executable in the package. )\n\n== Error Messages\n\nIf you try to execute an action that requires a specific type in the state,\nbut the current state does not contain that type, the error message is\nsomething like\n\n> No instance for (Control.Monad.MultiState.ContainsType Foo '[])\n\nwhere @Foo@ is the missing type.\n\n== Known Deficits\n\nThis package currently lacks a complete set of \"lifting instances\", i.e.\ninstance definitions for classes such as mtl's MonadWriter \"over\" the newly\nintroduced monad transformers, as in\n\n> instance (MonadWriter w m) => MonadWriter w (MultiStateT c m) where ..\n\nThese \"lifting instances\" would be necessary\nto achieve full compatability with existing transformers. Ping me if you\nfind anything specific missing.\n\n== Changelog\n\n* 0.2.0.0:\n\n* Start using DataKinds and TypeOperators to make the HList\nrepresentation more readable. The translation roughly is:\n\n> Null        -> '[]\n> Cons a Null -> '[a]\n> Cons a b    -> a ': b\n> TNull       -> HNil\n> TCons a b   -> a :+: b\n\n* Remove dependency on `tfp` package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      exes = {
        "multistate-test" = {
          depends = pkgs.lib.optionals (flags.build-test) [
            (hsPkgs."multistate" or (errorHandler.buildDepError "multistate"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = if flags.build-test then true else false;
        };
        "multistate-example" = {
          depends = pkgs.lib.optionals (flags.build-example) [
            (hsPkgs."multistate" or (errorHandler.buildDepError "multistate"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = if flags.build-example then true else false;
        };
      };
    };
  }