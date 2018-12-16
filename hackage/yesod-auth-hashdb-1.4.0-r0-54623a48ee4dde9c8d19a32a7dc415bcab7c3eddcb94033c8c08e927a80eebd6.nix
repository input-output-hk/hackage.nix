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
      specVersion = "1.6.0";
      identifier = {
        name = "yesod-auth-hashdb";
        version = "1.4.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Paul Rouse <pyr@doynton.org>";
      author = "Patrick Brisbin, later changes Paul Rouse";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Authentication plugin for Yesod.";
      description = "This package is the Yesod.Auth.HashDB plugin, originally included in yesod-auth, but now modified to be more secure and placed in a separate package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-auth)
          (hsPkgs.text)
          (hsPkgs.yesod-persistent)
          (hsPkgs.persistent)
          (hsPkgs.yesod-form)
          (hsPkgs.pwstore-fast)
          (hsPkgs.cryptohash)
        ];
      };
    };
  }