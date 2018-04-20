{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hinquire";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jones3.hardy@gmail.com";
        author = "Hardy Jones";
        homepage = "https://github.com/joneshf/hinquire";
        url = "";
        synopsis = "Generate armet style query strings.";
        description = "Hinquire is a formalization/testing bed for inquire.js";
        buildType = "Simple";
      };
      components = {
        hinquire = {
          depends  = [
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.QuickCheck
            hsPkgs.test-framework
            hsPkgs.test-framework-quickcheck2
            hsPkgs.test-framework-th
          ];
        };
        tests = {
          properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.bifunctors
              hsPkgs.hinquire
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-th
            ];
          };
        };
      };
    }