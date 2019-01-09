{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stm-containers"; version = "0.1.1"; };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/stm-containers";
      url = "";
      synopsis = "Containers for STM";
      description = "This library is based on an STM-specialized implementation of\nHash Array Mapped Trie.\nIt provides very efficient implementations of @Map@ and @Set@ data structures,\nwhich are slightly slower than their counterparts from \\\"unordered-containers\\\",\nbut scale very well on concurrent access patterns.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.loch-th)
          (hsPkgs.placeholders)
          (hsPkgs.focus)
          (hsPkgs.hashable)
          (hsPkgs.primitive)
          (hsPkgs.base)
          ];
        };
      tests = {
        "word-array-tests" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.HTF)
            (hsPkgs.loch-th)
            (hsPkgs.placeholders)
            (hsPkgs.focus)
            (hsPkgs.free)
            (hsPkgs.mtl)
            (hsPkgs.hashable)
            (hsPkgs.primitive)
            (hsPkgs.base)
            ];
          };
        "api-tests" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.HTF)
            (hsPkgs.stm-containers)
            (hsPkgs.loch-th)
            (hsPkgs.placeholders)
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
          depends = [
            (hsPkgs.mwc-random)
            (hsPkgs.mwc-random-monad)
            (hsPkgs.criterion)
            (hsPkgs.text)
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
          depends = [
            (hsPkgs.criterion)
            (hsPkgs.mwc-random)
            (hsPkgs.mwc-random-monad)
            (hsPkgs.focus)
            (hsPkgs.stm-containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.loch-th)
            (hsPkgs.placeholders)
            (hsPkgs.free)
            (hsPkgs.async)
            (hsPkgs.hashable)
            (hsPkgs.base)
            ];
          };
        };
      };
    }