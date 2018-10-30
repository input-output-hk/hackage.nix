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
        name = "stm-containers";
        version = "0.2.2";
      };
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
        depends  = [
          (hsPkgs.hashable)
          (hsPkgs.list-t)
          (hsPkgs.focus)
          (hsPkgs.transformers)
          (hsPkgs.loch-th)
          (hsPkgs.placeholders)
          (hsPkgs.primitive)
          (hsPkgs.base-prelude)
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
            (hsPkgs.base-prelude)
          ];
        };
        "api-tests" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.HTF)
            (hsPkgs.stm-containers)
            (hsPkgs.loch-th)
            (hsPkgs.placeholders)
            (hsPkgs.base-prelude)
            (hsPkgs.list-t)
            (hsPkgs.focus)
            (hsPkgs.unordered-containers)
            (hsPkgs.free)
            (hsPkgs.mtl)
            (hsPkgs.hashable)
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
            (hsPkgs.base)
          ];
        };
        "concurrent-insertion-bench" = {
          depends  = [
            (hsPkgs.criterion)
            (hsPkgs.mwc-random)
            (hsPkgs.mwc-random-monad)
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
            (hsPkgs.base)
          ];
        };
      };
    };
  }