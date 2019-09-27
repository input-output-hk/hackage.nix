let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "global"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Byron James Johnson";
      maintainer = "ByronJohnsonFP@gmail.com";
      author = "Byron James Johnson";
      homepage = "";
      url = "";
      synopsis = "Library enabling unique top-level declarations";
      description = "The \"global\" library enables the declaration of unique top-level\ndeclarations, including references to mutable state accessible via IO.\n\nConceptually, this library defines primitive means of unique declarations,\nwhose internal implementation is hidden from users, and uses Template\nHaskell to provide a public interface.  Thus, it is not necessarily\nportable across various implementations.  It is currently designed to be\ncompatible with GHC.  Users do not need to be aware of the internal,\nlow-level implementation; if a more portable, stable means of providing the\nsame functionality becomes available, the library can be updated without\nchanging the provided public interface.\n\nWhile this library provides the basis for an alternative approach to\nmanaging state, users should consider using instead the @transformers@\nlibrary's StateT transformer, possibly accompanied with @fclabels@ to\nmanage hierarchical state (libraries that provide a higher-level means of\nmanaging monad stacks based on transformers include @mtl@, @monads-tf@, and\n@monad-operations@).  This library might be more appropriately used for\nother purposes, such as to provide a means to directly translate C to\nHaskell with a result whose style more closely resembles that of the\noriginal code.  Users should also consider using the language feature\n@ImplicitParams@.\n\nExamples of small programs that use this library are provided in the\nrepository in which it resides.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."loch-th" or (buildDepError "loch-th"))
          (hsPkgs."haskell-src-exts-qq" or (buildDepError "haskell-src-exts-qq"))
          (hsPkgs."syntax-trees-fork-bairyn" or (buildDepError "syntax-trees-fork-bairyn"))
          (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
          (hsPkgs."SafeSemaphore" or (buildDepError "SafeSemaphore"))
          ];
        buildable = true;
        };
      };
    }