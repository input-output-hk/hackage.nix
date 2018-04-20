{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fixed-vector-cereal";
          version = "0.6.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
        author = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Cereal instances for fixed-vector";
        description = "Cereal instances for fixed-vector";
        buildType = "Simple";
      };
      components = {
        fixed-vector-cereal = {
          depends  = [
            hsPkgs.base
            hsPkgs.fixed-vector
            hsPkgs.cereal
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.fixed-vector
              hsPkgs.fixed-vector-cereal
              hsPkgs.cereal
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
            ];
          };
        };
      };
    }