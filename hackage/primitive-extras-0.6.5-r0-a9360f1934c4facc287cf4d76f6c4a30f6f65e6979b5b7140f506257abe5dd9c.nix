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
        name = "primitive-extras";
        version = "0.6.5";
      };
      license = "MIT";
      copyright = "(c) 2018, Metrix.AI";
      maintainer = "Metrix.AI Tech Team <tech@metrix.ai>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/metrix-ai/primitive-extras";
      url = "";
      synopsis = "Extras for the \"primitive\" library";
      description = "";
      buildType = "Simple";
    };
    components = {
      "primitive-extras" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.deferred-folds)
          (hsPkgs.focus)
          (hsPkgs.foldl)
          (hsPkgs.list-t)
          (hsPkgs.primitive)
          (hsPkgs.profunctors)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.cereal)
            (hsPkgs.deferred-folds)
            (hsPkgs.focus)
            (hsPkgs.primitive)
            (hsPkgs.primitive-extras)
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