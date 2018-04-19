{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "test-framework-quickcheck2";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "batterseapower@hotmail.com";
        author = "Max Bolingbroke";
        homepage = "http://github.com/batterseapower/test-framework";
        url = "";
        synopsis = "QuickCheck2 support for the test-framework package.";
        description = "";
        buildType = "Simple";
      };
      components = {
        test-framework-quickcheck2 = {
          depends  = [
            hsPkgs.test-framework
            hsPkgs.QuickCheck
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.random
            ]
            else [ hsPkgs.base ]);
        };
      };
    }