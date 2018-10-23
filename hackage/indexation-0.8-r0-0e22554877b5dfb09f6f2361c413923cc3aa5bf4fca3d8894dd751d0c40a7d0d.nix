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
        name = "indexation";
        version = "0.8";
      };
      license = "MIT";
      copyright = "(c) 2018, Metrix.AI";
      maintainer = "Metrix.AI Tech Team <tech@metrix.ai>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/metrix-ai/indexation";
      url = "";
      synopsis = "Tools for entity indexation";
      description = "A set of tools for indexing entities";
      buildType = "Simple";
    };
    components = {
      "indexation" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bitvec)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.cereal-vector)
          (hsPkgs.contravariant)
          (hsPkgs.deepseq)
          (hsPkgs.deferred-folds)
          (hsPkgs.dense-int-set)
          (hsPkgs.focus)
          (hsPkgs.foldl)
          (hsPkgs.hashable)
          (hsPkgs.list-t)
          (hsPkgs.mmorph)
          (hsPkgs.potoki)
          (hsPkgs.potoki-cereal)
          (hsPkgs.profunctors)
          (hsPkgs.stm-containers)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vector-th-unbox)
        ];
      };
    };
  }