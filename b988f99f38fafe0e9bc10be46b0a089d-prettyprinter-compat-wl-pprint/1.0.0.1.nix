{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "prettyprinter-compat-wl-pprint";
          version = "1.0.0.1";
        };
        license = "BSD-2-Clause";
        copyright = "";
        maintainer = "David Luposchainsky <dluposchainsky at google>";
        author = "Daan Leijen, Noam Lewis, David Luposchainsky";
        homepage = "http://github.com/quchen/prettyprinter";
        url = "";
        synopsis = "Prettyprinter compatibility module for previous users of the wl-pprint package.";
        description = "See README.md";
        buildType = "Simple";
      };
      components = {
        "prettyprinter-compat-wl-pprint" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.prettyprinter
          ];
        };
      };
    }