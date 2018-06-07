{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "flay";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "Renzo Carbonara 2017-2018";
        maintainer = "renλren!zone";
        author = "Renzo Carbonara";
        homepage = "https://github.com/k0001/flay";
        url = "";
        synopsis = "Work generically on your datatype without knowing its shape nor its contents.";
        description = "Work generically on your datatype without knowing its shape nor its contents using\na principlied approach.";
        buildType = "Simple";
      };
      components = {
        flay = {
          depends  = [
            hsPkgs.base
            hsPkgs.constraints
            hsPkgs.transformers
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.flay
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.transformers
            ];
          };
        };
      };
    }