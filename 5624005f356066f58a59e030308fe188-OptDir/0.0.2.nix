{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "OptDir";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Masahiro Sakai <masahiro.sakai@gmail.com>";
        author = "Masahiro Sakai";
        homepage = "";
        url = "";
        synopsis = "The OptDir type for representing optimization directions.";
        description = "The OptDir type for representing optimization directions.";
        buildType = "Simple";
      };
      components = {
        OptDir = {
          depends  = [
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.hashable
          ];
        };
      };
    }