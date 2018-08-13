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
        name = "list-t-attoparsec";
        version = "0.4.0.1";
      };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/list-t-attoparsec";
      url = "";
      synopsis = "An \"attoparsec\" adapter for \"list-t\"";
      description = "";
      buildType = "Simple";
    };
    components = {
      "list-t-attoparsec" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.list-t)
          (hsPkgs.either)
          (hsPkgs.transformers)
          (hsPkgs.base-prelude)
        ];
      };
      tests = {
        "hspec" = {
          depends  = [
            (hsPkgs.hspec)
            (hsPkgs.list-t-attoparsec)
            (hsPkgs.list-t-text)
            (hsPkgs.list-t)
            (hsPkgs.attoparsec)
            (hsPkgs.either)
            (hsPkgs.text)
            (hsPkgs.base-prelude)
          ];
        };
      };
    };
  }