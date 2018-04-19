{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "adict";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012 IPI PAN";
        maintainer = "waszczuk.kuba@gmail.com";
        author = "Jakub Waszczuk";
        homepage = "https://github.com/kawu/adict";
        url = "";
        synopsis = "Approximate dictionary searching";
        description = "Approximate dictionary searching library.";
        buildType = "Simple";
      };
      components = {
        adict = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.vector
            hsPkgs.array
            hsPkgs.pqueue
            hsPkgs.binary
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.containers
              hsPkgs.vector
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.adict
            ];
          };
        };
      };
    }