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
        name = "interspersed";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "(c) 2016, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/interspersed";
      url = "";
      synopsis = "An abstraction over interspersing monadic actions";
      description = "";
      buildType = "Simple";
    };
    components = {
      "interspersed" = {
        depends  = [
          (hsPkgs.transformers)
          (hsPkgs.base-prelude)
        ];
      };
    };
  }