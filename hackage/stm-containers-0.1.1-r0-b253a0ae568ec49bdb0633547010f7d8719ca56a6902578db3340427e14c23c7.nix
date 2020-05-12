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
      identifier = { name = "stm-containers"; version = "0.1.1"; };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/stm-containers ";
      url = "";
      synopsis = "Containers for STM";
      description = "This library is based on an STM-specialized implementation of\nHash Array Mapped Trie.\nIt provides very efficient implementations of @Map@ and @Set@ data structures,\nwhich are slightly slower than their counterparts from \\\"unordered-containers\\\",\nbut scale very well on concurrent access patterns.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."loch-th" or (errorHandler.buildDepError "loch-th"))
          (hsPkgs."placeholders" or (errorHandler.buildDepError "placeholders"))
          (hsPkgs."focus" or (errorHandler.buildDepError "focus"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "word-array-tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HTF" or (errorHandler.buildDepError "HTF"))
            (hsPkgs."loch-th" or (errorHandler.buildDepError "loch-th"))
            (hsPkgs."placeholders" or (errorHandler.buildDepError "placeholders"))
            (hsPkgs."focus" or (errorHandler.buildDepError "focus"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
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
            (hsPkgs."focus" or (errorHandler.buildDepError "focus"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
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
            (hsPkgs."focus" or (errorHandler.buildDepError "focus"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
            (hsPkgs."loch-th" or (errorHandler.buildDepError "loch-th"))
            (hsPkgs."placeholders" or (errorHandler.buildDepError "placeholders"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "concurrent-insertion-bench" = {
          depends = [
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."mwc-random-monad" or (errorHandler.buildDepError "mwc-random-monad"))
            (hsPkgs."focus" or (errorHandler.buildDepError "focus"))
            (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."loch-th" or (errorHandler.buildDepError "loch-th"))
            (hsPkgs."placeholders" or (errorHandler.buildDepError "placeholders"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }