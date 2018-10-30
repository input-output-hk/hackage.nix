{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "interruptible";
        version = "0.1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marcos@marcosdumay.com";
      author = "Marcos Dumay de Medeiros";
      homepage = "https://sealgram.com/git/haskell/interruptible/";
      url = "";
      synopsis = "Monad transformers that can be run and resumed later, conserving their context.";
      description = "Given an inner monad @M@ and a transformer @T@, if T is an interruptible transformer,\nit becomes possible to intercalate functions over its context with functions over the\ninner monad. That is, code like this:\n\n> runT (f 1 >>= g)\n> where\n>     f :: Int -> T M a\n>     g :: a -> T M b\n\nCan be broken up like this:\n\n> do\n> let c0 = inTCtx 1\n> c1 <- resume f c0\n> _ <- resume g c2\n\nThat makes it possible to intercalate the execution of different contexts, and\ntreat contexts like data, for iterating or returning them.\n\nAs shown on the example, interruptible transformers are resumed with the @resume@ function.\nState may be managed by specialized functions usually named as @inTransfomerCtx@ and\n@peelTransformerCtx@ that enclose a value in an initial context and retrieve the\nvalue from a context.\n\nInterruptible transformers can be stacked. On this case, they must be resumed with a\ncomposition of @resume@ calls, and their contexts must be created and peeled on the inverse\norder that they appear on the stack. Like:\n\n> do\n> let c0 = inT2Ctx . inT1Ctx \$ 1\n> c1 <- (resume . resume) f c0\n> _ <- (resume . resume) g c1\n> where\n>     f :: Monad m => Int -> T1 T2 M a\n>     g :: Monad m => a -> T1 T2 M b\n\nFor convenience, the @Interruptible@ module exports the @resume2@ to @resume5@\nfunctions as composotions of resume. They can be composed further as in\n@resume7 = resume3 . resume4@ if necessary.\n\nThis package also contains the appliable instantiations of Interruptible for the mtl transformers,\nthe @intercalateWith@ function, that intercalates calls of a function through a list\nof contexts and parameters, and the @SafeIO@ module that lifts IOException treatment from the\nbase monad into the current resumed context.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.monad-control)
          (hsPkgs.lifted-base)
          (hsPkgs.either)
        ];
      };
      tests = {
        "all" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.either)
            (hsPkgs.transformers)
            (hsPkgs.interruptible)
          ];
        };
      };
    };
  }