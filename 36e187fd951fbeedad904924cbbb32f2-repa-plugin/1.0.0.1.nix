{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "repa-plugin";
          version = "1.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@ouroborus.net>";
        author = "The DPH Team";
        homepage = "";
        url = "";
        synopsis = "Data Flow Fusion GHC Plugin.";
        description = "This GHC plugin implements Data Flow Fusion as described in the paper:\nData Flow Fusion with Series Expressions in Haskell, Haskell Symposium 2013.";
        buildType = "Simple";
      };
      components = {
        repa-plugin = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.ghc
            hsPkgs.ddc-base
            hsPkgs.ddc-core
            hsPkgs.ddc-core-flow
            hsPkgs.ddc-core-simpl
          ];
        };
      };
    }