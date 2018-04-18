{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "composite-ekg";
          version = "0.5.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Confer Health, Inc.";
        maintainer = "oss@confer.care";
        author = "Confer Health, Inc";
        homepage = "https://github.com/ConferHealth/composite#readme";
        url = "";
        synopsis = "EKG Metrics for Vinyl/Frames records";
        description = "Integration between EKG and Vinyl/Frames records allowing records holding registered metrics to be easily constructed from a type declaration.";
        buildType = "Simple";
      };
      components = {
        composite-ekg = {
          depends  = [
            hsPkgs.base
            hsPkgs.composite-base
            hsPkgs.ekg
            hsPkgs.ekg-core
            hsPkgs.lens
            hsPkgs.text
            hsPkgs.vinyl
          ];
        };
      };
    }