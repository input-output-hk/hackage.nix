{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bindings-apr";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "PHO <pho at cielonegro dot org>";
        author = "PHO <pho at cielonegro dot org>";
        homepage = "http://cielonegro.org/Bindings-APR.html";
        url = "";
        synopsis = "Low level bindings to Apache Portable Runtime (APR)";
        description = "Bindings to APR: <http://apr.apache.org/>";
        buildType = "Simple";
      };
      components = {
        bindings-apr = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
          ];
          pkgconfig = [
            pkgconfPkgs.apr-1
          ];
        };
      };
    }