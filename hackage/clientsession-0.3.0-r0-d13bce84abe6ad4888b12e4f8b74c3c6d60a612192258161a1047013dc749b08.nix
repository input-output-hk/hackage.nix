{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "clientsession";
        version = "0.3.0";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.SimpleAES)
          (hsPkgs.pureMD5)
          (hsPkgs.dataenc)
          (hsPkgs.failure)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.binary)
        ];
      };
    };
  }