{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "alex-meta";
          version = "0.3.0.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jonas.duregard@gmail.com";
        author = "Jonas Duregard";
        homepage = "";
        url = "";
        synopsis = "Quasi-quoter for Alex lexers";
        description = "A Template-Haskell based version of the Alex lexer generator. It is used by BNFC-meta to generate lexers and currently this is the only feature known to be working.";
        buildType = "Custom";
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