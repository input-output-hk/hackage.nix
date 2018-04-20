{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "conversion-bytestring";
          version = "1.0.0.1";
        };
        license = "MIT";
        copyright = "(c) 2015, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/conversion-bytestring";
        url = "";
        synopsis = "\"Conversion\" instances for the \"bytestring\" library";
        description = "";
        buildType = "Simple";
      };
      components = {
        conversion-bytestring = {
          depends  = [
            hsPkgs.bytestring
            hsPkgs.conversion
            hsPkgs.base-prelude
          ];
        };
      };
    }