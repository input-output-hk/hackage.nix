{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "imj-prelude";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2017 - 2018 Olivier Sohn";
        maintainer = "olivier.sohn@gmail.com";
        author = "Olivier Sohn";
        homepage = "https://github.com/OlivierSohn/hamazed/blob/master/imj-prelude/README.md";
        url = "";
        synopsis = "Prelude library.";
        description = "Library of commonly used functions and types.";
        buildType = "Simple";
      };
      components = {
        "imj-prelude" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.text
          ];
        };
      };
    }