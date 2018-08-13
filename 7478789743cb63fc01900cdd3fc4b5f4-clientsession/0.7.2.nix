{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      test = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "clientsession";
        version = "0.7.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/clientsession/tree/master";
      url = "";
      synopsis = "Store session data in a cookie.";
      description = "Achieves security through AES-CBC encryption and\nHMAC-SHA256 authentication.  Uses Base64\nencoding to avoid any issues with characters.";
      buildType = "Simple";
    };
    components = {
      "clientsession" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.directory)
          (hsPkgs.crypto-api)
          (hsPkgs.cryptocipher)
          (hsPkgs.cryptohash)
          (hsPkgs.base64-bytestring)
        ];
      };
      tests = {
        "runtests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cryptocipher)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.clientsession)
          ];
        };
      };
    };
  }