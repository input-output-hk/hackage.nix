{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "clientsession";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/clientsession/tree/master";
        url = "";
        synopsis = "Store session data in a cookie.";
        description = "Achieves security through AES encryption and MD5 hashing.\nUses base64 encoding to avoid any issues with characters.";
        buildType = "Simple";
      };
      components = {
        clientsession = {
          depends  = [
            hsPkgs.base
            hsPkgs.Crypto
            hsPkgs.dataenc
            hsPkgs.bytestring
            hsPkgs.random
            hsPkgs.utf8-string
          ];
        };
      };
    }