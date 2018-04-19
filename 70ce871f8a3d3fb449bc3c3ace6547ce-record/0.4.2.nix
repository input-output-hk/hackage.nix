{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "record";
          version = "0.4.2";
        };
        license = "MIT";
        copyright = "(c) 2015, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/record";
        url = "";
        synopsis = "Anonymous records";
        description = "This library provides the abstractions behind the anonymous record syntax.\nIt is intended to be used in conjunction with\n<http://hackage.haskell.org/package/record-preprocessor the \"record-preprocessor\">,\nwhich enables a Haskell syntax extension.\n\nIf you're looking for the Template Haskell version of the library,\nplease check out the @0.3.*@ versions.\nThose are maintained as well.";
        buildType = "Simple";
      };
      components = {
        record = {
          depends  = [
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.basic-lens
            hsPkgs.base-prelude
            hsPkgs.base
          ];
        };
      };
    }