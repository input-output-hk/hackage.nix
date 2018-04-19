{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "aligned-foreignptr";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
        author = "Balazs Komuves";
        homepage = "http://code.haskell.org/~bkomuves/";
        url = "";
        synopsis = "An aligned ForeignPtr type";
        description = "An aligned ForeignPtr type.";
        buildType = "Simple";
      };
      components = {
        aligned-foreignptr = {
          depends  = [ hsPkgs.base ];
        };
      };
    }