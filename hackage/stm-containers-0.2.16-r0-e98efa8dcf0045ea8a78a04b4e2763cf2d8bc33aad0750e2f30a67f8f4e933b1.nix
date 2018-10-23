{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "stm-containers";
        version = "0.2.16";
      };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/stm-containers";
      url = "";
      synopsis = "Containers for STM";
      description = "This library is based on an STM-specialized implementation of\nHash Array Mapped Trie.\nIt provides efficient implementations of @Map@, @Set@\nand other data structures,\nwhich are marginally slower than their counterparts from \\\"unordered-containers\\\",\nbut scale well on concurrent access patterns.\n\nFor details on performance of the library see\n<http://nikita-volkov.github.io/stm-containers/ this blog post>.";
      buildType = "Simple";
    };
    components = {
      "stm-containers" = {
        depends  = [
          (hsPkgs.hashable)
          (hsPkgs.list-t)
          (hsPkgs.focus)
          (hsPkgs.transformers)
          (hsPkgs.primitive)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
        ];
      };
      tests = {
        "word-array-tests" = {
          depends  = [
            (hsPkgs.free)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.HTF)
            (hsPkgs.hashable)
            (hsPkgs.list-t)
            (hsPkgs.focus)
            (hsPkgs.transformers)
            (hsPkgs.loch-th)
            (hsPkgs.placeholders)
            (hsPkgs.primitive)
            (hsPkgs.mtl-prelude)
            (hsPkgs.base-prelude)
            (hsPkgs.base)
          ];
        };
        "api-tests" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.HTF)
            (hsPkgs.stm-containers)
            (hsPkgs.loch-th)
            (hsPkgs.placeholders)
            (hsPkgs.list-t)
            (hsPkgs.focus)
            (hsPkgs.unordered-containers)
            (hsPkgs.free)
            (hsPkgs.mtl)
            (hsPkgs.hashable)
            (hsPkgs.mtl-prelude)
            (hsPkgs.base-prelude)
            (hsPkgs.base)
          ];
        };
      };
      benchmarks = {
        "insertion-bench" = {
          depends  = [
            (hsPkgs.mwc-random)
            (hsPkgs.mwc-random-monad)
            (hsPkgs.criterion)
            (hsPkgs.text)
            (hsPkgs.list-t)
            (hsPkgs.focus)
            (hsPkgs.hashable)
            (hsPkgs.hashtables)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.stm-containers)
            (hsPkgs.loch-th)
            (hsPkgs.placeholders)
            (hsPkgs.base-prelude)
            (hsPkgs.base)
          ];
        };
        "concurrent-insertion-bench" = {
          depends  = [
            (hsPkgs.criterion)
            (hsPkgs.mwc-random)
            (hsPkgs.mwc-random-monad)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.list-t)
            (hsPkgs.focus)
            (hsPkgs.unordered-containers)
            (hsPkgs.hashable)
            (hsPkgs.stm-containers)
            (hsPkgs.loch-th)
            (hsPkgs.placeholders)
            (hsPkgs.free)
            (hsPkgs.async)
            (hsPkgs.base-prelude)
            (hsPkgs.base)
          ];
        };
        "concurrent-transactions-bench" = {
          depends  = [
            (hsPkgs.criterion)
            (hsPkgs.mwc-random)
            (hsPkgs.mwc-random-monad)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.list-t)
            (hsPkgs.focus)
            (hsPkgs.unordered-containers)
            (hsPkgs.hashable)
            (hsPkgs.stm-containers)
            (hsPkgs.loch-th)
            (hsPkgs.placeholders)
            (hsPkgs.mtl)
            (hsPkgs.free)
            (hsPkgs.async)
            (hsPkgs.mtl-prelude)
            (hsPkgs.base-prelude)
            (hsPkgs.base)
          ];
        };
      };
    };
  }