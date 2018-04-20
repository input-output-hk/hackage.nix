{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "turn-loop";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Joe Vargas";
        author = "";
        homepage = "https://github.com/jxv/turn-loop#readme";
        url = "";
        synopsis = "Manage multiple turned-based sessions";
        description = "Manage multiple turned-based sessions";
        buildType = "Simple";
      };
      components = {
        turn-loop = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.stm
          ];
        };
      };
    }