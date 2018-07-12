{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "since";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Athan Clark";
        maintainer = "athan.clark@gmail.com";
        author = "Athan Clark";
        homepage = "https://github.com/athanclark/since#readme";
        url = "";
        synopsis = "Get the number of seconds since the last invocation";
        description = "";
        buildType = "Simple";
      };
      components = {
        "since" = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
          ];
        };
      };
    }