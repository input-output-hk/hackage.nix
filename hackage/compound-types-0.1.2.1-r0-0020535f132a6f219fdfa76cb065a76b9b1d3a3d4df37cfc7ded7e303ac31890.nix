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
        name = "compound-types";
        version = "0.1.2.1";
      };
      license = "MIT";
      copyright = "(c) 2016, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/compound-types";
      url = "";
      synopsis = "Sum and Product types and such";
      description = "This library provides first-class multi-arity product- and sum-types and\nneat type-level utilities for their composition.\nThe solution is quite simple and doesn’t require the advanced proficiency\nin the language to be applied in practice.\n\nFor a comprehensive introduction please see\n<http://nikita-volkov.github.io/first-class-sums-and-products/ this blog post>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base-prelude)
          (hsPkgs.base)
        ];
      };
      benchmarks = {
        "demo" = {
          depends  = [
            (hsPkgs.compound-types)
            (hsPkgs.rebase)
          ];
        };
      };
    };
  }