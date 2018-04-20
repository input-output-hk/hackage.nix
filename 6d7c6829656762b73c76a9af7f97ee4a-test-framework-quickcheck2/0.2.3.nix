{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "test-framework-quickcheck2";
          version = "0.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Max Bolingbroke <batterseapower@hotmail.com>";
        author = "Max Bolingbroke <batterseapower@hotmail.com>";
        homepage = "http://batterseapower.github.com/test-framework/";
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