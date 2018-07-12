{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "time-extras";
          version = "1.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<ashley@semantic.org>";
        author = "Ashley Yakeley";
        homepage = "http://semantic.org/TimeLib/";
        url = "";
        synopsis = "Data instances for the time package";
        description = "Data instances for the time package";
        buildType = "Simple";
      };
      components = {
        "time-extras" = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
          ];
        };
      };
    }