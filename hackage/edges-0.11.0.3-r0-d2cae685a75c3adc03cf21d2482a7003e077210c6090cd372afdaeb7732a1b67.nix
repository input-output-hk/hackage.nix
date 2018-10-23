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
        name = "edges";
        version = "0.11.0.3";
      };
      license = "MIT";
      copyright = "(c) 2018, Metrix.AI";
      maintainer = "Metrix.AI Tech Team <tech@metrix.ai>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/metrix-ai/edges";
      url = "";
      synopsis = "Tools for efficient immutable graphs";
      description = "A set of tools for constructing immutable graphs which are both memory and performance-efficient.";
      buildType = "Simple";
    };
    components = {
      "edges" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cereal)
          (hsPkgs.cereal-data-dword)
          (hsPkgs.cereal-vector)
          (hsPkgs.contravariant)
          (hsPkgs.data-dword)
          (hsPkgs.deepseq)
          (hsPkgs.deferred-folds)
          (hsPkgs.foldl)
          (hsPkgs.hashable)
          (hsPkgs.monad-par)
          (hsPkgs.pointed)
          (hsPkgs.potoki)
          (hsPkgs.potoki-cereal)
          (hsPkgs.primitive)
          (hsPkgs.primitive-extras)
          (hsPkgs.profunctors)
          (hsPkgs.QuickCheck)
          (hsPkgs.semigroupoids)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vector-th-unbox)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.cereal)
            (hsPkgs.edges)
            (hsPkgs.foldl)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.rerebase)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }