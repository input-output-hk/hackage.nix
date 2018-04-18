{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hascas";
          version = "0.1.0.0";
        };
        license = "LicenseRef-Apache";
        copyright = "2016 Saurabh Rawat";
        maintainer = "saurabh.rawat90@gmail.com";
        author = "Saurabh Rawat";
        homepage = "https://github.com/eklavya/hascas#readme";
        url = "";
        synopsis = "Cassandra driver for haskell";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        hascas = {
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
            hsPkgs.template-haskell
          ];
        };
        tests = {
          hascas-test = {
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
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }