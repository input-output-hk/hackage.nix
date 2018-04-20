{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-cereal-plus";
          version = "0.2.0";
        };
        license = "MIT";
        copyright = "(c) 2013, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/pipes-cereal-plus";
        url = "";
        synopsis = "Streaming serialization library on top of \"pipes\" and \"cereal-plus\".";
        description = "";
        buildType = "Simple";
      };
      components = {
        pipes-cereal-plus = {
          depends  = [
            hsPkgs.cereal-plus
            hsPkgs.pipes-bytestring
            hsPkgs.pipes
            hsPkgs.errors
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.base
          ];
        };
      };
    }