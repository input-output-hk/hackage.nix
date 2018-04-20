{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "chell-hunit";
          version = "0.2.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "John Millikin <john@john-millikin.com>";
        author = "John Millikin <john@john-millikin.com>";
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