{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "monad-stm";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "miguelimo38@yandex.ru";
        author = "Miguel Mitrofanov";
        homepage = "";
        url = "";
        synopsis = "MonadSTM class analogous to MonadIO";
        description = "";
        buildType = "Simple";
      };
      components = {
        monad-stm = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.transformers
          ];
        };
      };
    }