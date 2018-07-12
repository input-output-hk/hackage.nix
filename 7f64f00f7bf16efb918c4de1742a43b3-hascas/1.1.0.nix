{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hascas";
          version = "1.1.0";
        };
        license = "LicenseRef-Apache";
        copyright = "2016 Saurabh Rawat";
        maintainer = "saurabh.rawat90@gmail.com";
        author = "Saurabh Rawat";
        homepage = "https://github.com/eklavya/hascas#readme";
        url = "";
        synopsis = "Cassandra driver for haskell";
        description = "This is a cassandra driver.";
        buildType = "Simple";
      };
      components = {
        "hascas" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.network
            hsPkgs.uuid
            hsPkgs.containers
            hsPkgs.stm
            hsPkgs.data-binary-ieee754
            hsPkgs.mtl
            hsPkgs.safe-exceptions
            hsPkgs.template-haskell
          ];
        };
        tests = {
          "hascas-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hascas
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.network
              hsPkgs.uuid
              hsPkgs.containers
              hsPkgs.stm
              hsPkgs.data-binary-ieee754
              hsPkgs.hspec
              hsPkgs.mtl
              hsPkgs.safe-exceptions
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }