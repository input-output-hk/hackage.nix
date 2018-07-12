{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dmc";
          version = "1.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Imants Cekusins";
        author = "Imants Cekusins";
        homepage = "https://github.com/ciez/dmc";
        url = "";
        synopsis = "cmd: run shell commands from code";
        description = "cmd: run shell commands from code";
        buildType = "Simple";
      };
      components = {
        "dmc" = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.process
              hsPkgs.dmc
            ];
          };
        };
      };
    }