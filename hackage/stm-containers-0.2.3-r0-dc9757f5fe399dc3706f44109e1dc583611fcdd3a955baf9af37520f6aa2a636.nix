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
      identifier = { name = "stm-containers"; version = "0.2.3"; };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/stm-containers";
      url = "";
      synopsis = "Containers for STM";
      description = "This library is based on an STM-specialized implementation of a\nHash Array Mapped Trie.\nIt provides efficient implementations of @Map@, @Set@\nand other data structures,\nwhich are slightly slower than their counterparts from \\\"unordered-containers\\\",\nbut scale very well on concurrent access patterns.\n\nFor details on performance of the library see\n<http://nikita-volkov.github.io/stm-containers/ this blog post>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."list-t" or (buildDepError "list-t"))
          (hsPkgs."focus" or (buildDepError "focus"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."loch-th" or (buildDepError "loch-th"))
          (hsPkgs."placeholders" or (buildDepError "placeholders"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."base-prelude" or (buildDepError "base-prelude"))
          ];
        buildable = true;
        };
      tests = {
        "word-array-tests" = {
          depends = [
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HTF" or (buildDepError "HTF"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."list-t" or (buildDepError "list-t"))
            (hsPkgs."focus" or (buildDepError "focus"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."loch-th" or (buildDepError "loch-th"))
            (hsPkgs."placeholders" or (buildDepError "placeholders"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."mtl-prelude" or (buildDepError "mtl-prelude"))
            (hsPkgs."base-prelude" or (buildDepError "base-prelude"))
            ];
          buildable = true;
          };
        "api-tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HTF" or (buildDepError "HTF"))
            (hsPkgs."stm-containers" or (buildDepError "stm-containers"))
            (hsPkgs."loch-th" or (buildDepError "loch-th"))
            (hsPkgs."placeholders" or (buildDepError "placeholders"))
            (hsPkgs."base-prelude" or (buildDepError "base-prelude"))
            (hsPkgs."list-t" or (buildDepError "list-t"))
            (hsPkgs."focus" or (buildDepError "focus"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."mtl-prelude" or (buildDepError "mtl-prelude"))
            (hsPkgs."base-prelude" or (buildDepError "base-prelude"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "insertion-bench" = {
          depends = [
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."mwc-random-monad" or (buildDepError "mwc-random-monad"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."list-t" or (buildDepError "list-t"))
            (hsPkgs."focus" or (buildDepError "focus"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."hashtables" or (buildDepError "hashtables"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."stm-containers" or (buildDepError "stm-containers"))
            (hsPkgs."loch-th" or (buildDepError "loch-th"))
            (hsPkgs."placeholders" or (buildDepError "placeholders"))
            (hsPkgs."base-prelude" or (buildDepError "base-prelude"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        "concurrent-insertion-bench" = {
          depends = [
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."mwc-random-monad" or (buildDepError "mwc-random-monad"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."list-t" or (buildDepError "list-t"))
            (hsPkgs."focus" or (buildDepError "focus"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."stm-containers" or (buildDepError "stm-containers"))
            (hsPkgs."loch-th" or (buildDepError "loch-th"))
            (hsPkgs."placeholders" or (buildDepError "placeholders"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base-prelude" or (buildDepError "base-prelude"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        "concurrent-transactions-bench" = {
          depends = [
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."mwc-random-monad" or (buildDepError "mwc-random-monad"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."list-t" or (buildDepError "list-t"))
            (hsPkgs."focus" or (buildDepError "focus"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."stm-containers" or (buildDepError "stm-containers"))
            (hsPkgs."loch-th" or (buildDepError "loch-th"))
            (hsPkgs."placeholders" or (buildDepError "placeholders"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."mtl-prelude" or (buildDepError "mtl-prelude"))
            (hsPkgs."base-prelude" or (buildDepError "base-prelude"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }