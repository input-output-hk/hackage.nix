{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "json-bytes-builder";
          version = "0.2";
        };
        license = "MIT";
        copyright = "(c) 2016, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/json-bytes-builder";
        url = "";
        synopsis = "Direct-to-bytes JSON Builder";
        description = "An API for encoding of arbitrary data-structures into JSON byte-arrays,\nwhich is faster than \\\"aeson\\\".";
        buildType = "Simple";
      };
      components = {
        json-bytes-builder = {
          depends  = [
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.semigroups
            hsPkgs.base-prelude
            hsPkgs.base
          ];
        };
      };
    }