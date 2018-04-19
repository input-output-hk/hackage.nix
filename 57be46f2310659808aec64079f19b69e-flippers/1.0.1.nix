{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "flippers";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Christian Marie";
        author = "Christian Marie <christian@ponies.io>";
        homepage = "";
        url = "";
        synopsis = "Variations on flip for multiple arguments";
        description = "flip1 to flip9, revers1 to reverse9";
        buildType = "Simple";
      };
      components = {
        flippers = {
          depends  = [ hsPkgs.base ];
        };
      };
    }