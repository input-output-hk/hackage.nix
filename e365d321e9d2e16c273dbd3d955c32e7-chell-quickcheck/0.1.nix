{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "chell-quickcheck";
          version = "0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "https://john-millikin.com/software/chell/";
        url = "";
        synopsis = "Quiet test runner (QuickCheck support)";
        description = "";
        buildType = "Simple";
      };
      components = {
        chell-quickcheck = {
          depends  = [
            hsPkgs.base
            hsPkgs.chell
            hsPkgs.QuickCheck
            hsPkgs.random
            hsPkgs.text
          ];
        };
      };
    }