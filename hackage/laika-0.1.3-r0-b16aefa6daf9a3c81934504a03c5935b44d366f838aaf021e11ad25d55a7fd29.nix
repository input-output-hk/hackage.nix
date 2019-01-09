{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { demo = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "laika"; version = "0.1.3"; };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/laika";
      url = "";
      synopsis = "Minimalistic type-checked compile-time template engine";
      description = "The library integrates flawlessly with Haskell's new\n<http://hackage.haskell.org/package/record first-class records>.\n\nIt inherits a remarkable quality from the dogs:\nunlike most other template engines\nat compile time it barks at you whenever you do anything wrong in your templates.\nHence the title (from Russian \"lai\" means \"bark\").\nAlso it commemorates Laika, the hero dog,\nwhich became the first animal to orbit Earth and died in space.\n\n_This library is in experimental state._\n_Detailed documentation will arrive with the first stable release._";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
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
      exes = {
        "demo" = {
          depends = (pkgs.lib).optionals (!(!flags.demo)) [
            (hsPkgs.laika)
            (hsPkgs.text)
            (hsPkgs.record)
            (hsPkgs.base-prelude)
            ];
          };
        };
      };
    }