{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8.0";
        identifier = {
          name = "yesod-auth-hashdb";
          version = "1.4.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Paul Rouse <pyr@doynton.org>";
        author = "Patrick Brisbin, later changes Paul Rouse";
        homepage = "https://github.com/paul-rouse/yesod-auth-hashdb";
        url = "";
        synopsis = "Authentication plugin for Yesod.";
        description = "This package is the Yesod.Auth.HashDB plugin, originally included in yesod-auth, but now modified to be more secure and placed in a separate package.";
        buildType = "Simple";
      };
      components = {
        yesod-auth-hashdb = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.yesod-core
            hsPkgs.yesod-auth
            hsPkgs.text
            hsPkgs.yesod-persistent
            hsPkgs.persistent
            hsPkgs.yesod-form
            hsPkgs.pwstore-fast
            hsPkgs.cryptohash
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.yesod-auth-hashdb
              hsPkgs.hspec
              hsPkgs.text
            ];
          };
        };
      };
    }