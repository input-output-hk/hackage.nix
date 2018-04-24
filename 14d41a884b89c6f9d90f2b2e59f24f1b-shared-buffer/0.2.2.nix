{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "shared-buffer";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jwlato@gmail.com";
        author = "John W. Lato";
        homepage = "";
        url = "";
        synopsis = "A circular buffer built on shared memory";
        description = "A circular buffer built on shared memory";
        buildType = "Simple";
      };
      components = {
        shared-buffer = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.bytestring
          ];
          build-tools = [ hsPkgs.hsc2hs ];
        };
        tests = {
          shared-buffer-tests = {
            depends  = [
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.shared-buffer
              hsPkgs.base
              hsPkgs.unix
              hsPkgs.bytestring
            ];
            build-tools = [ hsPkgs.hsc2hs ];
          };
        };
      };
    }