{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "path-pieces";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/path-pieces";
        url = "";
        synopsis = "Components of paths.";
        description = "";
        buildType = "Simple";
      };
      components = {
        path-pieces = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
          ];
        };
      };
    }