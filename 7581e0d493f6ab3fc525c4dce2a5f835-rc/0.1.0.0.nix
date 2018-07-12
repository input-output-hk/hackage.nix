{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rc";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Bogdan Penkovsky";
        maintainer = "dev () penkovsky dot com";
        author = "Bogdan Penkovsky";
        homepage = "https://github.com/masterdezign/rc#readme";
        url = "";
        synopsis = "Reservoir Computing, fast RNNs";
        description = "Please see the README on Github at <https://github.com/masterdezign/rc#readme>";
        buildType = "Simple";
      };
      components = {
        "rc" = {
          depends  = [
            hsPkgs.Learning
            hsPkgs.base
            hsPkgs.dde
            hsPkgs.hmatrix
            hsPkgs.random
            hsPkgs.vector
          ];
        };
        exes = {
          "ntc" = {
            depends  = [
              hsPkgs.Learning
              hsPkgs.base
              hsPkgs.dde
              hsPkgs.hmatrix
              hsPkgs.random
              hsPkgs.rc
              hsPkgs.vector
            ];
          };
        };
        tests = {
          "rc-test" = {
            depends  = [
              hsPkgs.Learning
              hsPkgs.base
              hsPkgs.dde
              hsPkgs.hmatrix
              hsPkgs.random
              hsPkgs.rc
              hsPkgs.vector
            ];
          };
        };
      };
    }