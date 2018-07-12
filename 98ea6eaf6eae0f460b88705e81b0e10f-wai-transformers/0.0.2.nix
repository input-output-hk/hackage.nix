{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-transformers";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Simple parameterization of Wai's Application type";
        description = "";
        buildType = "Simple";
      };
      components = {
        "wai-transformers" = {
          depends  = [
            hsPkgs.base
            hsPkgs.composition-extra
            hsPkgs.wai
            hsPkgs.transformers
          ];
        };
      };
    }