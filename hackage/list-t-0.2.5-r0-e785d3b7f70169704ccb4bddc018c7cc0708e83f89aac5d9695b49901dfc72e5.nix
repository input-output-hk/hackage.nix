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
        name = "list-t";
        version = "0.2.5";
      };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/list-t";
      url = "";
      synopsis = "ListT done right";
      description = "A correct implementation of the list monad-transformer.\nUseful for basic streaming.";
      buildType = "Simple";
    };
    components = {
      "list-t" = {
        depends  = [
          (hsPkgs.mmorph)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers)
          (hsPkgs.base-prelude)
        ];
      };
      tests = {
        "api-tests" = {
          depends  = [
            (hsPkgs.list-t)
            (hsPkgs.HTF)
            (hsPkgs.mtl-prelude)
            (hsPkgs.base-prelude)
          ];
        };
      };
    };
  }