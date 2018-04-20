{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "chell-quickcheck";
          version = "0.2.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "John Millikin <jmillikin@gmail.com>";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "https://john-millikin.com/software/chell/";
        url = "";
        synopsis = "QuickCheck support for the Chell testing library";
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
          ];
        };
      };
    }