{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mtl-prelude";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "(c) 2014, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/mtl-prelude";
        url = "";
        synopsis = "Reexports of most definitions from \"mtl\" and \"transformers\"";
        description = "This package only exports definitions from the \\\"mtl\\\" and \\\"transformers\\\"\nlibraries.\nUnlike every module of \\\"mtl\\\" it does not reexport\n@Control.Monad@ and @Control.Monad.Fix@.\n\nIn combination with the <http://hackage.haskell.org/package/base-prelude \"base-prelude\"> library,\nthis should give you a quite rich prelude.";
        buildType = "Simple";
      };
      components = {
        mtl-prelude = {
          depends  = [
            hsPkgs.transformers
            hsPkgs.mtl
          ];
        };
      };
    }