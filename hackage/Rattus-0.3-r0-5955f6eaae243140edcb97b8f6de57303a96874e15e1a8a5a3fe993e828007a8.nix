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
      identifier = { name = "Rattus"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2020 Patrick Bahr";
      maintainer = "Patrick Bahr <paba@itu.dk>";
      author = "Patrick Bahr";
      homepage = "https://github.com/pa-ba/Rattus";
      url = "";
      synopsis = "A modal FRP language";
      description = "This library implements the Rattus programming language as\nan embedded DSL. To this end the library provides a GHC\nplugin that performs the additional checks that are\nnecessary for Rattus. What follows is a brief\nintroduction to the language and its usage. A more\ndetailed introduction can be found in this\n<src/docs/paper.pdf paper>.\n\nRattus is a functional reactive programming (FRP) language\nthat uses modal types to ensure operational properties\nthat are crucial for reactive programs: productivity (in\neach computation step, the program makes progress),\ncausality (output depends only on current and earlier\ninput), and no implicit space leaks (programs do not\nimplicitly retain memory over time).\n\nTo ensure these properties, Rattus uses the type modality\n@O@ to express the concept of time at the type\nlevel. Intuitively speaking, a value of type @O a@\nrepresents a computation that will produce a value of type\n@a@ in the next time step. Additionally, the language also\nfeatures the @Box@ type modality. A value of type @Box a@\nis a time-independent computation that can be executed at\nany time to produce a value of type @a@.\n\nFor example, the type of streams is defined as\n\n> data Str a = a ::: (O (Str a))\n\nSo the head of the stream is available now, but its tail\nis only available in the next time step. Writing a @map@\nfunction for this type of streams, requires us to use the\n@Box@ modality:\n\n> map :: Box (a -> b) -> Str a -> Str b\n> map f (x ::: xs) = unbox f x ::: delay (map f (adv xs))\n\nThis makes sure that the function @f@ that we give to\n@map@ is available at any time in the future.\n\nThe core of the language is defined in the module\n\"Rattus.Primitives\". Note that the operations on @O@ and\n@Box@ have non-standard typing rules. Therefore, this\nlibrary provides a compiler plugin that checks these\nnon-standard typing rules. To write Rattus programs, one\nmust enable this plugin via the GHC option\n@-fplugin=Rattus.Plugin@, e.g. by including the following\nline in the source file:\n\n> {-# OPTIONS -fplugin=Rattus.Plugin #-}\n\nIn addition, one must annotate the functions that are\nwritten in Rattus:\n\n> {-# ANN myFunction Rattus #-}\n\nOr annotate the whole module as a Rattus module:\n\n> {-# ANN module Rattus #-}\n\nBelow is a minimal Rattus program using the\n\"Rattus.Stream\" module for programming with streams:\n\n> {-# OPTIONS -fplugin=Rattus.Plugin #-}\n>\n> import Rattus\n> import Rattus.Stream\n>\n> {-# ANN sums Rattus #-}\n> sums :: Str Int -> Str Int\n> sums = scan (box (+)) 0\n\nThe\n<docs/src/Rattus.Stream.html source code of the Rattus.Stream module>\nprovides more examples on how to program in Rattus.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."simple-affine-space" or (errorHandler.buildDepError "simple-affine-space"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          ];
        buildable = true;
        };
      tests = {
        "memory-leak" = {
          depends = [
            (hsPkgs."Rattus" or (errorHandler.buildDepError "Rattus"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "time-leak" = {
          depends = [
            (hsPkgs."Rattus" or (errorHandler.buildDepError "Rattus"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "ill-typed" = {
          depends = [
            (hsPkgs."Rattus" or (errorHandler.buildDepError "Rattus"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "well-typed" = {
          depends = [
            (hsPkgs."Rattus" or (errorHandler.buildDepError "Rattus"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        "rewrite" = {
          depends = [
            (hsPkgs."Rattus" or (errorHandler.buildDepError "Rattus"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }