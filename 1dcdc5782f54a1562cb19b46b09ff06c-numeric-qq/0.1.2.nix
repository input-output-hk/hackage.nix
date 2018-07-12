{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "numeric-qq";
          version = "0.1.2";
        };
        license = "MIT";
        copyright = "(c) 2014, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/numeric-qq";
        url = "";
        synopsis = "Quasi-quoters for numbers of different bases";
        description = "Quasi-quoters for numeral systems of standard bases:\n\n* Binary (base-2)\n\n* Octal (base-8)\n\n* Hexadecimal (base-16)\n\nAll they do is produce integral numbers at compile-time with\ncompile-time syntax checking.";
        buildType = "Custom";
      };
      components = {
        "numeric-qq" = {
          depends  = [
            hsPkgs.template-haskell
            hsPkgs.loch-th
            hsPkgs.placeholders
            hsPkgs.base
          ];
        };
        tests = {
          "doctests" = {
            depends  = [
              hsPkgs.doctest
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.base
            ];
          };
        };
      };
    }