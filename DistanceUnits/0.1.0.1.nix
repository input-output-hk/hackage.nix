{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "DistanceUnits";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "m@gambogi.com";
        author = "Matt Gambogi";
        homepage = "https://github.com/gambogi/DistanceUnits";
        url = "";
        synopsis = "A comprehensive distance library";
        description = "A corpus of real world distance units and tools for working with them";
        buildType = "Simple";
      };
      components = {
        DistanceUnits = {
          depends  = [ hsPkgs.base ];
        };
      };
    }