{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "prettyprinter-ansi-terminal";
          version = "0.1";
        };
        license = "BSD-2-Clause";
        copyright = "";
        maintainer = "David Luposchainsky <dluposchainsky at google>";
        author = "David Luposchainsky";
        homepage = "http://github.com/quchen/prettyprinter";
        url = "";
        synopsis = "ANSI terminal backend for the modern, extensible and well-documented prettyprinter.";
        description = "See README.md";
        buildType = "Simple";
      };
      components = {
        prettyprinter-ansi-terminal = {
          depends  = [
            hsPkgs.base
            hsPkgs.ansi-terminal
            hsPkgs.text
            hsPkgs.prettyprinter
          ];
        };
        tests = {
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }