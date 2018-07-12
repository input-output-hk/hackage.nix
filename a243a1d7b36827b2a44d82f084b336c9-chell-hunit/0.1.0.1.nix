{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "chell-hunit";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "John Millikin <jmillikin@gmail.com>";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "https://john-millikin.com/software/chell/";
        url = "";
        synopsis = "HUnit support for Chell, a quiet test runner";
        description = "";
        buildType = "Simple";
      };
      components = {
        "chell-hunit" = {
          depends  = [
            hsPkgs.base
            hsPkgs.chell
            hsPkgs.HUnit
            hsPkgs.text
          ];
        };
      };
    }