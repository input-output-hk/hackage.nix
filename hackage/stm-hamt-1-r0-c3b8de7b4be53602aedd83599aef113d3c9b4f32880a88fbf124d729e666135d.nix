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
        name = "stm-hamt";
        version = "1";
      };
      license = "MIT";
      copyright = "(c) 2016, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/stm-hamt";
      url = "";
      synopsis = "STM-specialised Hash Array Mapped Trie";
      description = "A low-level data-structure,\nwhich can be used to implement higher-level interfaces like\nhash-map and hash-set.\nSuch implementations are presented by\n<http://hackage.haskell.org/package/stm-containers the \"stm-containers\" library>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deferred-folds)
          (hsPkgs.focus)
          (hsPkgs.hashable)
          (hsPkgs.primitive)
          (hsPkgs.primitive-extras)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.deferred-folds)
            (hsPkgs.focus)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.rerebase)
            (hsPkgs.stm-hamt)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
      benchmarks = {
        "concurrent-insertion-bench" = {
          depends  = [
            (hsPkgs.criterion)
            (hsPkgs.mwc-random)
            (hsPkgs.mwc-random-monad)
            (hsPkgs.list-t)
            (hsPkgs.focus)
            (hsPkgs.stm-hamt)
            (hsPkgs.free)
            (hsPkgs.async)
            (hsPkgs.rebase)
          ];
        };
      };
    };
  }