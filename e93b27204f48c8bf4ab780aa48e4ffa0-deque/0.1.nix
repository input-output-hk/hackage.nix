{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "deque";
        version = "0.1";
      };
      license = "MIT";
      copyright = "(c) 2016, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/deque";
      url = "";
      synopsis = "Double-ended queue";
      description = "An implementation of double-ended queue (aka Dequeue or Deque)\nbased on the head-tail linked list.";
      buildType = "Simple";
    };
    components = {
      "deque" = {
        depends  = [
          (hsPkgs.base-prelude)
          (hsPkgs.base)
        ];
      };
    };
  }