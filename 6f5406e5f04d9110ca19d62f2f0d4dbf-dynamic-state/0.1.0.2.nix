{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dynamic-state";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "zcarterc@gmail.com";
        author = "Carter Charbonneau";
        homepage = "";
        url = "";
        synopsis = "Optionally serializable dynamic state keyed by type";
        description = "Optionally serializable dynamic state keyed by type";
        buildType = "Simple";
      };
      components = {
        "dynamic-state" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.concrete-typerep
            hsPkgs.unordered-containers
            hsPkgs.hashable
          ];
        };
      };
    }