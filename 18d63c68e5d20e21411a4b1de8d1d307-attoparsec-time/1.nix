{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "attoparsec-time";
          version = "1";
        };
        license = "MIT";
        copyright = "(c) 2017, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/attoparsec-time";
        url = "";
        synopsis = "Attoparsec parsers of time";
        description = "A collection of Attoparsec parsers for the \\\"time\\\" library";
        buildType = "Custom";
      };
      components = {
        "attoparsec-time" = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.time
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.base-prelude
            hsPkgs.base
          ];
        };
        tests = {
          "doctests" = {
            depends  = [
              hsPkgs.doctest
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.base-prelude
              hsPkgs.base
            ];
          };
        };
      };
    }