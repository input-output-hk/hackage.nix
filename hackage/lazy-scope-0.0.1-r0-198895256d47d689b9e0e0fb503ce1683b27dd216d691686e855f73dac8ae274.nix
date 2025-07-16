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
      specVersion = "3.0";
      identifier = { name = "lazy-scope"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Daniil Iaitkov 2025";
      maintainer = "dyaitskov@gmail.com";
      author = "Daniil Iaitskov";
      homepage = "http://github.com/yaitskov/scoped-handle";
      url = "";
      synopsis = "Alternative lazy ByteString and ST-like IO Handle";
      description = "lazy-scope library appeared as an attempt to improve lazy IO API from\n<https://hackage.haskell.org/package/bytestring bytestring> package:\n\n-   @hGetContents@ closes handle which was open by somebody else.\n-   @hGetContents@ closes handle only on EOF\n\nE.g. <https://hackage.haskell.org/package/git-phoenix git-phoenix> does\nGIT objects recovery. Recovered compressed file usually has trailing\ntrash bytes after archive ends. In such circumstance bracket finalizer\nshould check every handle before closing.\n\nlazy-scope library provides @hGetContents@ with alternative semantic -\nit never close the handle! Handle and values, derived from it, have a\ntype parameter which prevents accidental thunk escape beyond open handle\nscope. Solution is based on\n<https://hackage.haskell.org/package/base/docs/Control-Monad-ST.html ST>\nmonad.\n\n> import Lazy.Scope qualified as S\n> import Relude\n>\n> main = do\n>   r <- S.withBinaryFile \"/etc/hosts\" ReadMode S.hGetContents\n>   S.unsnoc r `seq` return ()\n\nError:\n\n>   • Couldn't match type ‘s0’ with ‘s’\n>     Expected: S.Handle s -> S.LazyT s IO (S.Bs s0)\n>       Actual: S.Handle s -> S.LazyT s IO (S.Bs s)\n>       because type variable ‘s’ would escape its scope\n\nCorrect version:\n\n> import Data.ByteString.Lazy qualified as LBS\n> import Lazy.Scope qualified as S\n> import Relude\n>\n> main = do\n>   r <- S.withBinaryFile \"/etc/hosts\" ReadMode (S.hGetContents >=> S.toLbs)\n>   LBS.unsnoc r `seq` return ()\n\nThe package has scoped alternatives for majority of @Handle@ and\n@ByteString@ functions from @System.IO@ and @Data.ByteString.Lazy@\nmodules correspondingly.\n\n== Development\n#development#\n\nDev environment is provided by\n<https://nixos.org/guides/nix-pills/10-developing-with-nix-shell.html nix-shell>\n\n> $ nix-shell\n> $ cabal test";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."trace-embrace" or (errorHandler.buildDepError "trace-embrace"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."lazy-scope" or (errorHandler.buildDepError "lazy-scope"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ];
          buildable = true;
        };
      };
    };
  }