{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "mime-types";
          version = "0.1.0.6";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/yesodweb/wai";
        url = "";
        synopsis = "Basic mime-type handling types and functions";
        description = "API docs and the README are available at <http://www.stackage.org/package/mime-types>.";
        buildType = "Simple";
      };
      components = {
        "mime-types" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.bytestring
          ];
        };
      };
    }