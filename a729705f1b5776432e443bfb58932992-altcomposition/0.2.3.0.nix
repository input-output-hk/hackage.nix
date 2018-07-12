{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16";
        identifier = {
          name = "altcomposition";
          version = "0.2.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jmacristovao@gmail.com";
        author = "João Cristóvão";
        homepage = "https://github.com/jcristovao/altcomposition";
        url = "";
        synopsis = "Alternative combinators for unorthodox function composition";
        description = "";
        buildType = "Simple";
      };
      components = {
        "altcomposition" = {
          depends  = [
            hsPkgs.base
            hsPkgs.composition
          ];
        };
      };
    }