{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-wai";
          version = "3.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ian@iankduncan.com";
        author = "Ian Duncan";
        homepage = "http://github.com/brewtown/pipes-wai";
        url = "";
        synopsis = "A port of wai-conduit for the pipes ecosystem";
        description = "";
        buildType = "Simple";
      };
      components = {
        pipes-wai = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.pipes
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.http-types
            hsPkgs.blaze-builder
          ];
        };
      };
    }