{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "pcre-less";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sreservoir@gmail.com";
        author = "sreservoir";
        homepage = "~";
        url = "";
        synopsis = "Nicer interface to pcre-light.";
        description = "You'll have to read the comments until I get around to writing docs.";
        buildType = "Simple";
      };
      components = {
        pcre-less = {
          depends  = [
            hsPkgs.base
            hsPkgs.pcre-light
            hsPkgs.bytestring
          ];
        };
      };
    }