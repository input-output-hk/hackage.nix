{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "json-ast";
          version = "0.2";
        };
        license = "MIT";
        copyright = "(c) 2016, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/json-ast";
        url = "";
        synopsis = "Universal JSON AST datastructure";
        description = "";
        buildType = "Simple";
      };
      components = {
        "json-ast" = {
          depends  = [
            hsPkgs.vector
            hsPkgs.text
            hsPkgs.scientific
            hsPkgs.unordered-containers
            hsPkgs.base
          ];
        };
      };
    }