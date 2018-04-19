{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hs-php-session";
          version = "0.0.9.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013-2014 Edward L. Blake";
        maintainer = "edwardlblake@gmail.com";
        author = "Edward L. Blake";
        homepage = "https://github.com/elblake/hs-php-session";
        url = "";
        synopsis = "PHP session and values serialization";
        description = "A library for encoding and decoding serialized PHP sessions in the format\nused by the \\\"php\\\" setting for session.serialize_handler as well as\nencoding and decoding serialized values.";
        buildType = "Simple";
      };
      components = {
        hs-php-session = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
      };
    }