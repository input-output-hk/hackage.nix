{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hs-gen-iface";
          version = "0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Roman Cheplyaka <roma@ro-che.info>";
        author = "Roman Cheplyaka";
        homepage = "";
        url = "";
        synopsis = "Utility to generate haskell-names interface files";
        description = "Compiler which generates module interfaces for haskell-names";
        buildType = "Simple";
      };
      components = {
        exes = {
          hs-gen-iface = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.haskell-src-exts
              hsPkgs.haskell-names
              hsPkgs.haskell-packages
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.Cabal
              hsPkgs.hse-cpp
              hsPkgs.tagged
            ];
          };
        };
      };
    }