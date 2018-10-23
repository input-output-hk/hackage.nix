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
        name = "deferred-folds";
        version = "0.9.7.1";
      };
      license = "MIT";
      copyright = "(c) 2018, Metrix.AI";
      maintainer = "Metrix.AI Tech Team <tech@metrix.ai>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/metrix-ai/deferred-folds";
      url = "";
      synopsis = "Abstractions over deferred folds";
      description = "This library is in an experimental state.\nUsers should be prepared for frequent updates.";
      buildType = "Simple";
    };
    components = {
      "deferred-folds" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.foldl)
          (hsPkgs.hashable)
          (hsPkgs.primitive)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
    };
  }