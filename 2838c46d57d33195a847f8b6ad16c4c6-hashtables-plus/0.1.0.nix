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
        name = "hashtables-plus";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hashtables-plus";
      url = "";
      synopsis = "Extensions for a \"hashtables\" library";
      description = "Provides advanced data structures built on top of the ones from the\n\\\"hashtables\\\" library: multimap, set, \"StableName\"-based structures.";
      buildType = "Simple";
    };
    components = {
      "hashtables-plus" = {
        depends  = [
          (hsPkgs.hashtables)
          (hsPkgs.hashable)
          (hsPkgs.loch-th)
          (hsPkgs.placeholders)
          (hsPkgs.base)
        ];
      };
    };
  }