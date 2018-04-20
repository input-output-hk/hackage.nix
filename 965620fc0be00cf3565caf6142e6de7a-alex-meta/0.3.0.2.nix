{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "alex-meta";
          version = "0.3.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jonas.duregard@gmail.com";
        author = "Jonas Duregard";
        homepage = "";
        url = "";
        synopsis = "Quasi-quoter for Alex lexers";
        description = "";
        buildType = "Simple";
      };
      components = {
        alex-meta = {
          depends  = [
            hsPkgs.template-haskell
            hsPkgs.haskell-src-meta
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.QuickCheck
          ];
        };
      };
    }