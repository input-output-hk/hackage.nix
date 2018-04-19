{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "repa-io";
          version = "3.2.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@ouroborus.net>";
        author = "The DPH Team";
        homepage = "http://repa.ouroborus.net";
        url = "";
        synopsis = "Read and write Repa arrays in various formats.";
        description = "Read and write Repa arrays in various formats.";
        buildType = "Simple";
      };
      components = {
        repa-io = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-time
            hsPkgs.repa
            hsPkgs.bmp
            hsPkgs.vector
            hsPkgs.bytestring
            hsPkgs.binary
          ];
        };
      };
    }