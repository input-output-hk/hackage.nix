{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dvi-processing";
          version = "0.3.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "JeanPhilippeBernardy";
        author = "AaronBlack?";
        homepage = "";
        url = "";
        synopsis = "Read/write DVI and TFM file";
        description = "Read/write DVI and TFM file, including typesetting and other features";
        buildType = "Simple";
      };
      components = {
        dvi-processing = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.filepath
            hsPkgs.transformers
          ];
        };
      };
    }