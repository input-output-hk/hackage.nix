{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "record"; version = "0.4.1.1"; };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/record";
      url = "";
      synopsis = "Anonymous records";
      description = "This library provides the abstractions behind the anonymous record syntax.\nIt is intended to be used in conjunction with\n<http://hackage.haskell.org/package/record-preprocessor the \"record-preprocessor\">,\nwhich enables a Haskell syntax extension.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.basic-lens)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
          ];
        };
      };
    }