{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "geniplate";
          version = "0.6.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Lennart Augustsson";
        author = "Lennart Augustsson";
        homepage = "";
        url = "";
        synopsis = "Use template Haskell to generate Uniplate-like functions.";
        description = "Use template Haskell to generate Uniplate-like functions.";
        buildType = "Simple";
      };
      components = {
        geniplate = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.mtl
          ];
        };
      };
    }