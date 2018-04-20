{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
      base3 = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "test-framework-quickcheck2";
          version = "0.2.4";
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
            hsPkgs.extensible-exceptions
          ] ++ (if _flags.base3
            then [
              hsPkgs.base
              hsPkgs.random
            ]
            else pkgs.lib.optionals _flags.base4 [
              hsPkgs.base
              hsPkgs.random
            ]);
        };
      };
    }