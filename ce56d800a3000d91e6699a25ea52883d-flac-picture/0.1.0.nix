{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "flac-picture";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov@openmailbox.org>";
        author = "Mark Karpov <markkarpov@openmailbox.org>";
        homepage = "https://github.com/mrkkrp/flac-picture";
        url = "";
        synopsis = "Support for writing picture to FLAC metadata blocks with JuicyPixels";
        description = "Support for writing picture to FLAC metadata blocks with JuicyPixels.";
        buildType = "Simple";
      };
      components = {
        flac-picture = {
          depends  = [
            hsPkgs.JuicyPixels
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.flac
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.JuicyPixels
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.data-default-class
              hsPkgs.directory
              hsPkgs.flac
              hsPkgs.flac-picture
              hsPkgs.hspec
              hsPkgs.temporary
            ];
          };
        };
      };
    }