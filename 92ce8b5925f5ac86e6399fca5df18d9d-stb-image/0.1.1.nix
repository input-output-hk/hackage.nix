{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "stb-image";
          version = "0.1.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
        author = "Balazs Komuves";
        homepage = "";
        url = "";
        synopsis = "A wrapper around Sean Barrett's JPEG/PNG decoder";
        description = "Partial implementation of JPEG, PNG, TGA, BMP, PSD decoders,\nwith a really simple API.";
        buildType = "Simple";
      };
      components = {
        stb-image = {
          depends  = if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.bytestring
            ]
            else [ hsPkgs.base ];
        };
      };
    }