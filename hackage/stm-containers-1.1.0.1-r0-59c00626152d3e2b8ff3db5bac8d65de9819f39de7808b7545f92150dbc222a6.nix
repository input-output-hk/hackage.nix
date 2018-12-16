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
        version = "1.1.0.1";
      };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/stm-containers";
      url = "";
      synopsis = "Containers for STM";
      description = "This library is based on an STM-specialized implementation of\nHash Array Mapped Trie.\nIt provides efficient implementations of @Map@, @Set@\nand other data structures,\nwhich starting from version @1@ perform even better than their counterparts from \\\"unordered-containers\\\",\nbut also scale well on concurrent access patterns.\n\nFor details on performance of the library, which are a bit outdated, see\n<http://nikita-volkov.github.io/stm-containers/ this blog post>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.deferred-folds)
          (hsPkgs.focus)
          (hsPkgs.hashable)
          (hsPkgs.list-t)
          (hsPkgs.stm-hamt)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.deferred-folds)
            (hsPkgs.focus)
            (hsPkgs.foldl)
            (hsPkgs.free)
            (hsPkgs.HTF)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-text)
            (hsPkgs.rerebase)
            (hsPkgs.stm-containers)
          ];
        };
      };
    };
  }