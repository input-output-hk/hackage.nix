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
        name = "record";
        version = "0.1.5";
      };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/record";
      url = "";
      synopsis = "First class records implemented with quasi-quotation";
      description = "An API of just two quasi-quoters,\nproviding a full-scale solution to the notorious records problem of Haskell.\n\nLinks:\n\n* <http://nikita-volkov.github.io/record A comprehensive introduction to the library>.\n\n* <https://github.com/nikita-volkov/record/blob/master/demo/Main.hs Demo>.\n";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
        ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.doctest)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.base-prelude)
            (hsPkgs.base)
          ];
        };
      };
      benchmarks = {
        "demo" = {
          depends  = [
            (hsPkgs.record)
            (hsPkgs.base-prelude)
          ];
        };
      };
    };
  }