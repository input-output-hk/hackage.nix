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
      specVersion = "1.10";
      identifier = { name = "interruptible"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marcos@marcosdumay.com";
      author = "Marcos Dumay de Medeiros";
      homepage = "https://sealgram.com/git/haskell/interruptible/";
      url = "";
      synopsis = "Monad transformers that can be run and resumed later, conserving their context.";
      description = "Given an inner monad @M@ and a transformer @T@, if T is an interruptible transformer,\nit becomes possible to intercalate functions over its context with functions over the\ninner monad. That is, code like this:\n\n@\nrunT (f 1 >>= g)\nwhere\nf :: Int -> T M a\ng :: a -> T M b\n@\n\nCan be broken up like this:\n\n@\ndo\nlet c0 = inTCtx 1\nc1 <- resume f ct1\n_ <- resume g ct2\n@\n\nThat makes it possible to intercalate the execution of different contexts, and\ntreat contexts like data, for iterating or returning them.\n\nAs shown on the example, interruptible transformers are resumed with the @resume@ function.\nState may be managed by specialized functions usually named as @inTransfomerCtx@ and\n@peelTransformerCtx@ that enclose a value in an initial context and retrieve the\nvalue from a context.\n\nInterruptible transformers can be stacked. On this case, they must be resumed with a\ncomposition of @resume@ calls, and their contexts must be created and peeled on the inverse\norder that they appear on the stack. Like:\n\n@\ndo\nlet c0 = inT2Ctx . inT1Ctx \$ 1\nc1 <- (resume . resume) f ct1\n_ <- (resume . resume) g ct2\nwhere\nf :: Monad m => Int -> T1 T2 M a\ng :: Monad m => a -> T1 T2 M b\n@\n\nFor convenience, the @Interruptible@ module exports the @resume2@ to @resume5@\nfunctions as composotions of resume. They can be composed further as in\n@resume7 = resume3 . resume4@ if necessary.\n\nThis package also contains the appliable instantiations of Interruptible for the mtl transformers,\nthe @intercalateWith@ function, that intercalates calls of a function through a list\nof contexts and parameters, and the @SafeIO@ module that lifts IOException treatment from the\nbase monad into the current resumed context.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."either" or (buildDepError "either"))
          ];
        };
      tests = {
        "all" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."interruptible" or (buildDepError "interruptible"))
            ];
          };
        };
      };
    }