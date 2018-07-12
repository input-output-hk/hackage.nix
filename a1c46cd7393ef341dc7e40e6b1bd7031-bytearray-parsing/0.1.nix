{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bytearray-parsing";
          version = "0.1";
        };
        license = "MIT";
        copyright = "(c) 2017, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/bytearray-parsing";
        url = "";
        synopsis = "Parsing of bytearray-based data";
        description = "";
        buildType = "Simple";
      };
      components = {
        "bytearray-parsing" = {
          depends  = [
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.primitive
            hsPkgs.base
          ];
        };
      };
    }