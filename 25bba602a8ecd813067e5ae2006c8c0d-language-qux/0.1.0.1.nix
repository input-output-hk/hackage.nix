{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "language-qux";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "public@hjwylde.com";
        author = "Henry J. Wylde";
        homepage = "https://github.com/qux-lang/language-qux";
        url = "";
        synopsis = "Utilities for working with the Qux language";
        description = "";
        buildType = "Simple";
      };
      components = {
        "language-qux" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.either
            hsPkgs.indents
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.transformers
          ];
        };
      };
    }