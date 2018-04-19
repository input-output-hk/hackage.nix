{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rest-happstack";
          version = "0.3.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "code@silk.co";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Rest driver for Happstack.";
        description = "Rest driver for Happstack.";
        buildType = "Simple";
      };
      components = {
        rest-happstack = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.happstack-server
            hsPkgs.mtl
            hsPkgs.rest-core
            hsPkgs.rest-gen
            hsPkgs.utf8-string
          ];
        };
      };
    }