{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-carousel";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Copyright (c) 2014 AlephCloud, Inc.";
        maintainer = "jon@jonmsterling.com";
        author = "Jon Sterling";
        homepage = "";
        url = "";
        synopsis = "A rotating sequence data structure";
        description = "";
        buildType = "Simple";
      };
      components = {
        "data-carousel" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.lens
          ];
        };
      };
    }