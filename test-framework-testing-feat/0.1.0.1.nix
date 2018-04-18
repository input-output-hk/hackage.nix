{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "test-framework-testing-feat";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2013 Jonathan Fischoff, Max Bolingbroke";
        maintainer = "jonathangfischoff@gmail.com";
        author = "Jonathan Fischoff, Max Bolingbroke <batterseapower@hotmail.com>";
        homepage = "http://github.com/jfischoff/test-framework-testing-feat";
        url = "";
        synopsis = "A test framework provider for testing-feat";
        description = "A test provider for testing-feat copied from test-framework-quickcheck2 by Max Bolingbroke";
        buildType = "Simple";
      };
      components = {
        test-framework-testing-feat = {
          depends  = [
            hsPkgs.base
            hsPkgs.test-framework
            hsPkgs.testing-feat
          ];
        };
        tests = {
          Tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.test-framework
              hsPkgs.testing-feat
            ];
          };
        };
      };
    }