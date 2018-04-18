{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "base-prelude";
          version = "0.1.20";
        };
        license = "MIT";
        copyright = "(c) 2014, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/base-prelude";
        url = "";
        synopsis = "The most complete prelude formed from only the \"base\" package";
        description = "A library which reexports all non-conflicting and\nmost general definitions from the \\\"base\\\" package.\nThis includes APIs for applicatives, arrows, monoids, foldables, traversables,\nexceptions, generics, ST, MVars and STM.\n\nThis package will never have any dependencies other than \\\"base\\\".";
        buildType = "Simple";
      };
      components = {
        base-prelude = {
          depends  = [ hsPkgs.base ];
        };
      };
    }