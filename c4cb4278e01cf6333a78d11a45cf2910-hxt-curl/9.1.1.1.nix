{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hxt-curl";
          version = "9.1.1.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2010 Uwe Schmidt";
        maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
        author = "Uwe Schmidt";
        homepage = "https://github.com/UweSchmidt/hxt";
        url = "";
        synopsis = "LibCurl interface for HXT";
        description = "LibCurl interface for HXT";
        buildType = "Simple";
      };
      components = {
        hxt-curl = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.bytestring
            hsPkgs.curl
            hsPkgs.hxt
          ];
        };
      };
    }