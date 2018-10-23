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
        name = "vector-extras";
        version = "0.2";
      };
      license = "MIT";
      copyright = "(c) 2018, Metrix.AI";
      maintainer = "Metrix.AI Tech Team <tech@metrix.ai>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/metrix-ai/vector-extras";
      url = "";
      synopsis = "Utilities for the \"vector\" library";
      description = "This library is in an experimental state.\nUsers should be prepared for frequent updates.";
      buildType = "Simple";
    };
    components = {
      "vector-extras" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deferred-folds)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
    };
  }