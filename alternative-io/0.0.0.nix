{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "alternative-io";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "";
        url = "";
        synopsis = "IO as Alternative instance";
        description = "IO as Alternative instance";
        buildType = "Simple";
      };
      components = {
        alternative-io = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.transformers
            hsPkgs.transformers-base
          ];
        };
      };
    }