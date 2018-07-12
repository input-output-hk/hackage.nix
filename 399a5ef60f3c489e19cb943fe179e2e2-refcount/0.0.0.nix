{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "refcount";
          version = "0.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "benjamin.foppa@gmail.com";
        author = "Ben Foppa";
        homepage = "https://github.com/RobotGymnast/refcount";
        url = "";
        synopsis = "Container with element counts";
        description = "";
        buildType = "Simple";
      };
      components = {
        "refcount" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hashable
            hsPkgs.unordered-containers
          ];
        };
      };
    }