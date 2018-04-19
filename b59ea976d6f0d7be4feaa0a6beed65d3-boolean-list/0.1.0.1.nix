{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "boolean-list";
          version = "0.1.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "hawk.alan@gmail.com";
        author = "Alan Hawkins";
        homepage = "http://xy30.com";
        url = "";
        synopsis = "convert numbers to binary coded lists";
        description = "";
        buildType = "Simple";
      };
      components = {
        boolean-list = {
          depends  = [
            hsPkgs.base
            hsPkgs.HUnit
            hsPkgs.bytestring
          ];
        };
      };
    }