{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "streamproc";
          version = "1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "simons@cryp.to";
        author = "Shawn Garbett <shawn@garbett.org>, Peter Simons <simons@cryp.to>";
        homepage = "http://cryp.to/streamproc/";
        url = "";
        synopsis = "Stream Processer Arrow";
        description = "Stream Processer Arrow";
        buildType = "Simple";
      };
      components = {
        streamproc = {
          depends  = [ hsPkgs.base ];
        };
      };
    }