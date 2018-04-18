{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "identicon";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov@openmailbox.org>";
        author = "Mark Karpov <markkarpov@openmailbox.org>";
        homepage = "https://github.com/mrkkrp/identicon";
        url = "";
        synopsis = "Flexible generation of identicons";
        description = "Flexible generation of identicons.";
        buildType = "Simple";
      };
      components = {
        identicon = {
          depends  = [
            hsPkgs.base
            hsPkgs.JuicyPixels
            hsPkgs.bytestring
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.JuicyPixels
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.identicon
            ];
          };
        };
      };
    }