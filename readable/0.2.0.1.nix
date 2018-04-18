{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "readable";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mightybyte@gmail.com";
        author = "Doug Beardsley";
        homepage = "https://github.com/mightybyte/readable";
        url = "";
        synopsis = "Reading from Text and ByteString";
        description = "Provides a Readable type class for reading data types from ByteString and\nText.  Also includes efficient implementations for common data types.";
        buildType = "Simple";
      };
      components = {
        readable = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
      };
    }