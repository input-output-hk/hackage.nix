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
        name = "matcher";
        version = "0.1.1.3";
      };
      license = "MIT";
      copyright = "(c) 2016, Sannsyn AS";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/sannsyn/matcher";
      url = "";
      synopsis = "A composable abstraction for checking or converting a context value";
      description = "";
      buildType = "Simple";
    };
    components = {
      "matcher" = {
        depends  = [
          (hsPkgs.text)
          (hsPkgs.success)
          (hsPkgs.profunctors)
          (hsPkgs.transformers)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
        ];
      };
    };
  }