{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "json-ast-quickcheck";
        version = "0.1";
      };
      license = "MIT";
      copyright = "(c) 2016, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/json-ast-quickcheck";
      url = "";
      synopsis = "Compatibility layer for \"json-ast\" and \"QuickCheck\"";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.json-ast)
          (hsPkgs.quickcheck-instances)
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
        ];
      };
    };
  }