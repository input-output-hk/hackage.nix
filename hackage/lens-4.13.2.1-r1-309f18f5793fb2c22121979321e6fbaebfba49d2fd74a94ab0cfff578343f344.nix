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
    flags = {
      benchmark-uniplate = false;
      inlining = true;
      old-inline-pragmas = false;
      dump-splices = false;
      test-hlint = true;
      test-doctests = true;
      test-hunit = true;
      test-properties = true;
      test-templates = true;
      safe = false;
      trustworthy = true;
      j = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "lens"; version = "4.13.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012-2016 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/lens/";
      url = "";
      synopsis = "Lenses, Folds and Traversals";
      description = "This package comes \\\"Batteries Included\\\" with many useful lenses for the types\ncommonly used from the Haskell Platform, and with tools for automatically\ngenerating lenses and isomorphisms for user-supplied data types.\n\nThe combinators in @Control.Lens@ provide a highly generic toolbox for composing\nfamilies of getters, folds, isomorphisms, traversals, setters and lenses and their\nindexed variants.\n\nAn overview, with a large number of examples can be found in the <https://github.com/ekmett/lens#lens-lenses-folds-and-traversals README>.\n\nAn introductory video on the style of code used in this library by Simon Peyton Jones is available from <http://skillsmatter.com/podcast/scala/lenses-compositional-data-access-and-manipulation Skills Matter>.\n\nA video on how to use lenses and how they are constructed is available on <http://youtu.be/cefnmjtAolY?hd=1 youtube>.\n\nSlides for that second talk can be obtained from <http://comonad.com/haskell/Lenses-Folds-and-Traversals-NYC.pdf comonad.com>.\n\nMore information on the care and feeding of lenses, including a brief tutorial and motivation\nfor their types can be found on the <https://github.com/ekmett/lens/wiki lens wiki>.\n\nA small game of @pong@ and other more complex examples that manage their state using lenses can be found in the <https://github.com/ekmett/lens/blob/master/examples/ example folder>.\n\n/Lenses, Folds and Traversals/\n\nWith some signatures simplified, the core of the hierarchy of lens-like constructions looks like:\n\n\n<<http://i.imgur.com/ALlbPRa.png>>\n\n<Hierarchy.png (Local Copy)>\n\nYou can compose any two elements of the hierarchy above using @(.)@ from the @Prelude@, and you can\nuse any element of the hierarchy as any type it linked to above it.\n\nThe result is their lowest upper bound in the hierarchy (or an error if that bound doesn't exist).\n\nFor instance:\n\n* You can use any 'Traversal' as a 'Fold' or as a 'Setter'.\n\n* The composition of a 'Traversal' and a 'Getter' yields a 'Fold'.\n\n/Minimizing Dependencies/\n\nIf you want to provide lenses and traversals for your own types in your own libraries, then you\ncan do so without incurring a dependency on this (or any other) lens package at all.\n\n/e.g./ for a data type:\n\n> data Foo a = Foo Int Int a\n\nYou can define lenses such as\n\n> -- bar :: Lens' (Foo a) Int\n> bar :: Functor f => (Int -> f Int) -> Foo a -> f (Foo a)\n> bar f (Foo a b c) = fmap (\\a' -> Foo a' b c) (f a)\n\n> -- quux :: Lens (Foo a) (Foo b) a b\n> quux :: Functor f => (a -> f b) -> Foo a -> f (Foo b)\n> quux f (Foo a b c) = fmap (Foo a b) (f c)\n\nwithout the need to use any type that isn't already defined in the @Prelude@.\n\nAnd you can define a traversal of multiple fields with 'Control.Applicative.Applicative':\n\n> -- traverseBarAndBaz :: Traversal' (Foo a) Int\n> traverseBarAndBaz :: Applicative f => (Int -> f Int) -> Foo a -> f (Foo a)\n> traverseBarAndBaz f (Foo a b c) = Foo <\$> f a <*> f b <*> pure c\n\nWhat is provided in this library is a number of stock lenses and traversals for\ncommon haskell types, a wide array of combinators for working them, and more\nexotic functionality, (/e.g./ getters, setters, indexed folds, isomorphisms).";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-orphans" or (buildDepError "base-orphans"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."comonad" or (buildDepError "comonad"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."distributive" or (buildDepError "distributive"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."kan-extensions" or (buildDepError "kan-extensions"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."reflection" or (buildDepError "reflection"))
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."void" or (buildDepError "void"))
          ];
        };
      tests = {
        "templates" = {
          depends = (pkgs.lib).optionals (!(!flags.test-templates)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."lens" or (buildDepError "lens"))
            ];
          };
        "properties" = {
          depends = (pkgs.lib).optionals (!(!flags.test-properties)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-th" or (buildDepError "test-framework-th"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        "hunit" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hunit)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-th" or (buildDepError "test-framework-th"))
            ];
          };
        "doctests" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doctests || compiler.isGhc && (compiler.version).ge "8")) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."generic-deriving" or (buildDepError "generic-deriving"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."nats" or (buildDepError "nats"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."simple-reflect" or (buildDepError "simple-reflect"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            ];
          };
        };
      benchmarks = {
        "plated" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."comonad" or (buildDepError "comonad"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."generic-deriving" or (buildDepError "generic-deriving"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ] ++ (pkgs.lib).optional (flags.benchmark-uniplate) (hsPkgs."uniplate" or (buildDepError "uniplate"));
          };
        "alongside" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."comonad" or (buildDepError "comonad"))
            (hsPkgs."comonads-fd" or (buildDepError "comonads-fd"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        "folds" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."lens" or (buildDepError "lens"))
            ];
          };
        "traversals" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."lens" or (buildDepError "lens"))
            ];
          };
        "unsafe" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."comonad" or (buildDepError "comonad"))
            (hsPkgs."comonads-fd" or (buildDepError "comonads-fd"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."generic-deriving" or (buildDepError "generic-deriving"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        "zipper" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."comonad" or (buildDepError "comonad"))
            (hsPkgs."comonads-fd" or (buildDepError "comonads-fd"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."generic-deriving" or (buildDepError "generic-deriving"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }