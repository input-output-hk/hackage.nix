{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Concurrential";
          version = "0.2.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "aovieth@gmail.com";
        author = "Alexander Vieth";
        homepage = "http://github.com/avieth/Concurrential";
        url = "";
        synopsis = "Mix concurrent and sequential computation";
        description = "";
        buildType = "Simple";
      };
      components = {
        "Concurrential" = {
          depends  = [
            hsPkgs.base
            hsPkgs.async
            hsPkgs.stm
          ];
        };
      };
    }