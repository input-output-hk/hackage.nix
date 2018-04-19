{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "hxt-unicode";
          version = "9.0.2.1";
        };
        license = "MIT";
        copyright = "Copyright (c) 2010- Uwe Schmidt";
        maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
        author = "Uwe Schmidt";
        homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
        url = "";
        synopsis = "Unicode en-/decoding functions for utf8, iso-latin-* and other encodings";
        description = "Unicode encoding and decoding functions for utf8, iso-latin-* and somes other encodings,\nused in the Haskell XML Toolbox.\nISO Latin 1 - 16, utf8, utf16, ASCII are supported. Decoding\nis done with lazy functions, errors may be detected or ignored.";
        buildType = "Simple";
      };
      components = {
        hxt-unicode = {
          depends  = [
            hsPkgs.base
            hsPkgs.hxt-charproperties
          ];
        };
      };
    }