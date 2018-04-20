{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "xml-types";
          version = "0.1.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Basic types for representing XML";
        description = "";
        buildType = "Simple";
      };
      components = {
        xml-types = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
          ];
        };
      };
    }