{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dfrac";
          version = "0.1.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "grogers385@gmail.com";
        author = "George Rogers";
        homepage = "";
        url = "";
        synopsis = "A package for precise decimal arithmatic using rationals.";
        description = "A package for precise decimal arithmatic using rationals.";
        buildType = "Simple";
      };
      components = {
        "dfrac" = {
          depends  = [
            hsPkgs.base
            hsPkgs.scientific
          ];
        };
      };
    }