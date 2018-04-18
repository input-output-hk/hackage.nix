{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildtests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "word24";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "John W. Lato, jwlato@gmail.com";
        author = "John W. Lato, jwlato@gmail.com";
        homepage = "http://www.tiresiaspress.us/haskell/word24";
        url = "";
        synopsis = "24-bit word and int types for GHC";
        description = "24-bit Word and Int data types.";
        buildType = "Simple";
      };
      components = {
        word24 = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          testWord24 = {
            depends  = [
              hsPkgs.base
            ] ++ optionals _flags.buildtests [
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }