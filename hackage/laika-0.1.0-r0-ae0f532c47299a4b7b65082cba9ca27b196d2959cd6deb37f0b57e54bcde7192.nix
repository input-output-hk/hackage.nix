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
        name = "laika";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/laika";
      url = "";
      synopsis = "Minimalistic type-checked compile-time template engine";
      description = "The library integrates flawlessly with Haskell's new\n<https://github.com/nikita-volkov/record first-class records>.\n\nIt inherits a remarkable quality from the dogs however:\nunlike most other template engines\nat compile time it barks at you whenever you do anything wrong in your templates.\nHence the title (from Russian \"lai\" means \"bark\").\nAlso it commemorates Laika, the hero dog,\nwhich became the first animal to orbit Earth and died in space.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.template-haskell)
          (hsPkgs.system-filepath)
          (hsPkgs.system-fileio)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.either)
          (hsPkgs.transformers)
          (hsPkgs.record)
          (hsPkgs.base-prelude)
        ];
      };
      benchmarks = {
        "demo" = {
          depends  = [
            (hsPkgs.laika)
            (hsPkgs.text)
            (hsPkgs.record)
            (hsPkgs.base-prelude)
          ];
        };
      };
    };
  }