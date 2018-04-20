{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "json-types";
          version = "0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Basic types for representing JSON";
        description = "";
        buildType = "Simple";
      };
      components = {
        json-types = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.containers
          ];
        };
      };
    }