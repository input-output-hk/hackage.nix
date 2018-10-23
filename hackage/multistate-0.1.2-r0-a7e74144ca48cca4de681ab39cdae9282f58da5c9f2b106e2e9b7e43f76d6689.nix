{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      build-test = false;
      build-example = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "multistate";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "Jan Bracker, Lennart Spitzner";
      maintainer = "Lennart Spitzner <lsp@informatik.uni-kiel.de>";
      author = "Jan Bracker, Lennart Spitzner";
      homepage = "https://github.com/lspitzner/multistate";
      url = "";
      synopsis = "like mtl's ReaderT/StateT, but more than one contained value/type.";
      description = "\n== Introduction\n\nWhen using multiple ReaderT's or StateT's in the same monad stack, it becomes\nnecessary to lift the operations in order to affect a specific transformer.\nUsing heterogenous lists (type level functions), a GADT and a corresponding\ntype class, this package provides transformers that remove that necessity:\nMultiReaderT/MultiStateT can contain a heterogenous list of values.\n\nThe type inferred for the getter/setter determines which value is\nread/written.\n\n== Example\n\n>              -- an IO action wrapped by a MultiState\n>              -- containing both a Char and a [Char].\n> examplePrint :: MultiStateT (Cons [Char] (Cons Char Null)) IO ()\n> examplePrint = do\n>   c  <- mGet             -- inferred to be :: m Char\n>   cs <- mGet             -- inferred to be :: m [Char]\n>   lift \$ putStrLn (c:cs)\n\nThis computation can be executed in the following way:\n\n> main = evalMultiStateT\n>      \$ withMultiState 'H'\n>      \$ withMultiState \"ello, World!\"\n>      \$ examplePrint\n\n( you can find this example as an executable in the package. )\n\n== Known Deficits\n\nThis package currently lacks a complete set of \"lifting instances\", i.e.\ninstance definitions for classes such as mtl's MonadWriter \"over\" the newly\nintroduced monad transformers, as in\n\n> instance (MonadWriter w m) => MonadWriter w (MultiStateT c m) where ..\n\nThese \"lifting instances\" would be necessary\nto achieve full compatability with existing transformers. Ping me if you\nfind anything specific missing.";
      buildType = "Simple";
    };
    components = {
      "multistate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.tfp)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "multistate-test" = {
          depends  = pkgs.lib.optionals (flags.build-test) [
            (hsPkgs.multistate)
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.tfp)
          ];
        };
        "multistate-example" = {
          depends  = pkgs.lib.optionals (flags.build-example) [
            (hsPkgs.multistate)
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.tfp)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }