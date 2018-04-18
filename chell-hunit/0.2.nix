{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "chell-hunit";
          version = "0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "John Millikin <jmillikin@gmail.com>";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "https://john-millikin.com/software/chell/";
        url = "";
        synopsis = "HUnit support for the Chell testing library";
        description = "";
        buildType = "Simple";
      };
      components = {
        chell-hunit = {
          depends  = [
            hsPkgs.base
            hsPkgs.chell
            hsPkgs.HUnit
          ];
        };
      };
    }