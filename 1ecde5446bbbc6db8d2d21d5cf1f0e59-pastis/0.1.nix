{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "pastis";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "alpmestan@gmail.com";
        author = "Alp Mestanogullari <alpmestan@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Interface to the past.is URL shortening service";
        description = "Interface to the past.is URL shortening service through the HTTP and network packages.";
        buildType = "Simple";
      };
      components = {
        "pastis" = {
          depends  = [
            hsPkgs.base
            hsPkgs.HTTP
            hsPkgs.network
          ];
        };
      };
    }