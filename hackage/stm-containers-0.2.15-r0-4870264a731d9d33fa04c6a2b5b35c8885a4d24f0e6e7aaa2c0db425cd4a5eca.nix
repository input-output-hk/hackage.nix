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
      specVersion = "1.10";
      identifier = { name = "stm-containers"; version = "0.2.15"; };
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
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
          (hsPkgs."focus" or (errorHandler.buildDepError "focus"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "word-array-tests" = {
          depends = [
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HTF" or (errorHandler.buildDepError "HTF"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
            (hsPkgs."focus" or (errorHandler.buildDepError "focus"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."loch-th" or (errorHandler.buildDepError "loch-th"))
            (hsPkgs."placeholders" or (errorHandler.buildDepError "placeholders"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."mtl-prelude" or (errorHandler.buildDepError "mtl-prelude"))
            (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "api-tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HTF" or (errorHandler.buildDepError "HTF"))
            (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
            (hsPkgs."loch-th" or (errorHandler.buildDepError "loch-th"))
            (hsPkgs."placeholders" or (errorHandler.buildDepError "placeholders"))
            (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
            (hsPkgs."focus" or (errorHandler.buildDepError "focus"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."mtl-prelude" or (errorHandler.buildDepError "mtl-prelude"))
            (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "insertion-bench" = {
          depends = [
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."mwc-random-monad" or (errorHandler.buildDepError "mwc-random-monad"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
            (hsPkgs."focus" or (errorHandler.buildDepError "focus"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
            (hsPkgs."loch-th" or (errorHandler.buildDepError "loch-th"))
            (hsPkgs."placeholders" or (errorHandler.buildDepError "placeholders"))
            (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "concurrent-insertion-bench" = {
          depends = [
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."mwc-random-monad" or (errorHandler.buildDepError "mwc-random-monad"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
            (hsPkgs."focus" or (errorHandler.buildDepError "focus"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
            (hsPkgs."loch-th" or (errorHandler.buildDepError "loch-th"))
            (hsPkgs."placeholders" or (errorHandler.buildDepError "placeholders"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "concurrent-transactions-bench" = {
          depends = [
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."mwc-random-monad" or (errorHandler.buildDepError "mwc-random-monad"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
            (hsPkgs."focus" or (errorHandler.buildDepError "focus"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
            (hsPkgs."loch-th" or (errorHandler.buildDepError "loch-th"))
            (hsPkgs."placeholders" or (errorHandler.buildDepError "placeholders"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."mtl-prelude" or (errorHandler.buildDepError "mtl-prelude"))
            (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }