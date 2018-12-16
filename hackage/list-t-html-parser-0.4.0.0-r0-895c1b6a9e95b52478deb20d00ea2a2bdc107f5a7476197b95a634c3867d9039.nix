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
        name = "list-t-html-parser";
        version = "0.4.0.0";
      };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/list-t-html-parser";
      url = "";
      synopsis = "Streaming HTML parser";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.list-t)
          (hsPkgs.html-tokenizer)
          (hsPkgs.html-entities)
          (hsPkgs.conversion)
          (hsPkgs.conversion-text)
          (hsPkgs.conversion-case-insensitive)
          (hsPkgs.case-insensitive)
          (hsPkgs.text)
          (hsPkgs.either)
          (hsPkgs.mtl-prelude)
          (hsPkgs.base-prelude)
        ];
      };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs.hspec)
            (hsPkgs.list-t-html-parser)
            (hsPkgs.list-t-attoparsec)
            (hsPkgs.list-t-text)
            (hsPkgs.html-tokenizer)
            (hsPkgs.conversion)
            (hsPkgs.conversion-text)
            (hsPkgs.text)
            (hsPkgs.base-prelude)
          ];
        };
      };
    };
  }