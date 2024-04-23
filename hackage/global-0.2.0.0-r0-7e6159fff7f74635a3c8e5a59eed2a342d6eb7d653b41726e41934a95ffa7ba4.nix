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
      specVersion = "1.18";
      identifier = { name = "global"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Byron James Johnson";
      maintainer = "ByronJohnsonFP@gmail.com";
      author = "Byron James Johnson";
      homepage = "";
      url = "";
      synopsis = "Haskell2010 compatible library enabling unique top-level declarations";
      description = "The \"global\" library enables the declaration of unique top-level\ndeclarations, including references to mutable state accessible via IO.\n\nConceptually, this library defines primitive means of unique declarations,\nwhose internal implementation is hidden from users, and uses Template\nHaskell to provide a public interface.  Thus, it is not necessarily\nportable across various implementations.  It is currently designed to be\ncompatible with GHC.  Users do not need to be aware of the internal,\nlow-level implementation; if a more portable, stable means of providing the\nsame functionality becomes available, the library can be updated without\nchanging the provided public interface.\n\nWhile this library provides the basis for an alternative approach to\nmanaging state, users should consider using instead the @transformers@\nlibrary's StateT transformer, possibly accompanied with @fclabels@ to\nmanage hierarchical state (libraries that provide a higher-level means of\nmanaging monad stacks based on transformers include @mtl@, @monads-tf@, and\n@monad-operations@).  This library might be more appropriately used for\nother purposes, such as to provide a means to directly translate C to\nHaskell with a result whose style more closely resembles that of the\noriginal code.  Users should also consider using the language feature\n@ImplicitParams@.\n\nExamples of small programs that use this library are provided in the\nrepository in which it resides.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."loch-th" or (errorHandler.buildDepError "loch-th"))
          (hsPkgs."haskell-src-exts-qq" or (errorHandler.buildDepError "haskell-src-exts-qq"))
          (hsPkgs."syntax-trees-fork-bairyn" or (errorHandler.buildDepError "syntax-trees-fork-bairyn"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."SafeSemaphore" or (errorHandler.buildDepError "SafeSemaphore"))
        ];
        buildable = true;
      };
    };
  }