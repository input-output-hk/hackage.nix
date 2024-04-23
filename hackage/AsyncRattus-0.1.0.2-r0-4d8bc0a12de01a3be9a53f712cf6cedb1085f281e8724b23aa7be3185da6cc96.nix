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
      identifier = { name = "AsyncRattus"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2023 Emil Houlborg, Gregers Rørdam, Patrick Bahr";
      maintainer = "Patrick Bahr <paba@itu.dk>";
      author = "Emil Houlborg, Gregers Rørdam, Patrick Bahr";
      homepage = "https://github.com/pa-ba/AsyncRattus/";
      url = "";
      synopsis = "An asynchronous modal FRP language";
      description = "This library implements the Async Rattus programming\nlanguage as an embedded DSL. To this end the library\nprovides a GHC plugin that checks the stricter typing\nrules of Async Rattus.\nWhat follows is a brief introduction to the language and\nits usage. A more detailed introduction can be found in\nthis <src/docs/paper.pdf paper>.\n\nAsync Rattus is a functional reactive programming (FRP)\nlanguage that uses modal types to express temporal\ndependencies. In return the language will guarantee that\nprograms are productive (in each computation step, the\nprogram makes progress), causal (output depends only on\ncurrent and earlier input), and have no space leaks\n(programs do not implicitly retain memory over time).\n\nThe modal type constructor @O@ (pronounced \"later\") is\nused to express the passage of time at the type\nlevel. Intuitively speaking, a value of type @O a@\nrepresents a computation that will produce a value of type\n@a@ in the next time step. Additionally, the language also\nfeatures the @Box@ modal type constructor. A value of type\n@Box a@ is a time-independent computation that can be\nexecuted at any time to produce a value of type @a@.\n\nFor example, the type of signals is defined as\n\n> data Sig a = a ::: (O (Sig a))\n\nSo the current value of the signal is available now, but\nits future state is only available in the next time\nstep. Writing a @map@ function for this type of streams,\nrequires us to use the @Box@ modality:\n\n> map :: Box (a -> b) -> Sig a -> Sig b\n> map f (x ::: xs) = unbox f x ::: delay (map f (adv xs))\n\nThis makes sure that the function @f@ that we give to\n@map@ is available at any time in the future.\n\nThe core of the language is defined in the module\n\"AsyncRattus.Primitives\". Note that the operations on @O@\nand @Box@ have non-standard typing rules. Therefore, this\nlibrary provides a compiler plugin that checks these\nnon-standard typing rules. To write Async Rattus programs,\nyou must enable this plugin via the GHC option\n@-fplugin=AsyncRattus.Plugin@, e.g. by including the following\nline in the source file:\n\n> {-# OPTIONS -fplugin=AsyncRattus.Plugin #-}\n\nIn addition, you have to annotate functions that are\nwritten in Async Rattus:\n\n> {-# ANN myFunction AsyncRattus #-}\n\nYou can also annotate the whole module as an Async Rattus module:\n\n> {-# ANN module AsyncRattus #-}\n\nBelow is a minimal Async Rattus program using the\n\"AsyncRattus.Signal\" module for programming with signals:\n\n> {-# OPTIONS -fplugin=AsyncRattus.Plugin #-}\n>\n> import AsyncRattus\n> import AsyncRattus.Signal\n>\n> {-# ANN sums AsyncRattus #-}\n> sums :: Sig Int -> Sig Int\n> sums = scan (box (+)) 0\n\nThe <docs/src/AsyncRattus.Signal.html source code of the AsyncRattus.Signal module>\nprovides more examples on how to program in Async Rattus.\nAn example project using Async Rattus can be found\n<https://github.com/pa-ba/AsyncRattus/tree/master/examples/console here>.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."simple-affine-space" or (errorHandler.buildDepError "simple-affine-space"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "ill-typed" = {
          depends = [
            (hsPkgs."AsyncRattus" or (errorHandler.buildDepError "AsyncRattus"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
        "well-typed" = {
          depends = [
            (hsPkgs."AsyncRattus" or (errorHandler.buildDepError "AsyncRattus"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }