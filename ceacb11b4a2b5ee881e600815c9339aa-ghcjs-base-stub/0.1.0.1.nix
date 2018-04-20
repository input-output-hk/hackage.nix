{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghcjs-base-stub";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Louis Pan";
        maintainer = "louis@pan.me";
        author = "Louis Pan";
        homepage = "https://github.com/louispan/javascript-stub#readme";
        url = "";
        synopsis = "Allow GHCJS projects to compile under GHC and develop using intero.";
        description = "Allow GHCJS projects to compile under GHC and develop using intero.";
        buildType = "Simple";
      };
      components = {
        ghcjs-base-stub = {
          depends  = [
            hsPkgs.base
          ] ++ pkgs.lib.optionals (!compiler.isGhcjs) [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.deepseq
            hsPkgs.ghc-prim
            hsPkgs.primitive
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
      };
    }