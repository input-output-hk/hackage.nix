{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "frpnow";
          version = "0.18";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "atzeus@gmail.com";
        author = "Atze van der Ploeg";
        homepage = "https://github.com/atzeus/FRPNow";
        url = "";
        synopsis = "Principled practical FRP";
        description = "FRP with first-class behaviors and interalized IO, without space leaks";
        buildType = "Simple";
      };
      components = {
        frpnow = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.transformers
          ];
        };
      };
    }