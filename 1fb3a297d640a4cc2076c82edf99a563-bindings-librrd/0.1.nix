{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bindings-librrd";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "PHO <pho at cielonegro dot org>";
        author = "PHO <pho at cielonegro dot org>";
        homepage = "http://cielonegro.org/Bindings-librrd.html";
        url = "";
        synopsis = "Low level bindings to RRDtool";
        description = "RRDtool is a high performance data logging and graphing system for\ntime series data.\nThis package provides low-level bindings to librrd, which contains\nmost of the functionality in RRDtool.";
        buildType = "Simple";
      };
      components = {
        bindings-librrd = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
          ];
          pkgconfig = [
            pkgconfPkgs.librrd
          ];
        };
      };
    }