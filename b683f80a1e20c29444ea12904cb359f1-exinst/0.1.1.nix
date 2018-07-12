{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "exinst";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Renzo Carbonara 2015";
        maintainer = "renzoλcarbonara.com.ar";
        author = "Renzo Carbonara";
        homepage = "https://github.com/k0001/exinst";
        url = "";
        synopsis = "Derive instances for your existential types.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "exinst" = {
          depends  = [
            hsPkgs.base
            hsPkgs.constraints
            hsPkgs.singletons
          ];
        };
      };
    }