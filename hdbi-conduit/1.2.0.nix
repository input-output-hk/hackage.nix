{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hdbi-conduit";
          version = "1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "s9gf4ult@gmail.com";
        author = "Aleksey Uymanov";
        homepage = "https://github.com/s9gf4ult/hdbi-conduit";
        url = "";
        synopsis = "Conduit glue for HDBI";
        description = "";
        buildType = "Simple";
      };
      components = {
        hdbi-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.hdbi
            hsPkgs.resourcet
            hsPkgs.transformers
          ];
        };
        tests = {
          runtests = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.conduit
              hsPkgs.hdbi
              hsPkgs.hdbi-sqlite
              hsPkgs.quickcheck-assertions
              hsPkgs.resourcet
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.transformers
            ];
          };
        };
      };
    }