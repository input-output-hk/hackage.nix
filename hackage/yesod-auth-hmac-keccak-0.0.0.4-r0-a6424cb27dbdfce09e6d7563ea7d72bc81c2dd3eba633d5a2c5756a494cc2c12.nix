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
      specVersion = "1.10";
      identifier = {
        name = "yesod-auth-hmac-keccak";
        version = "0.0.0.4";
      };
      license = "MIT";
      copyright = "";
      maintainer = "nek0@chelnok.de";
      author = "nek0";
      homepage = "";
      url = "";
      synopsis = "An account authentication plugin for yesod with encrypted\ntoken transfer.";
      description = "This authentication plugin for Yesod uses a challenge-response\nauthentication mechanism, where the password is encrypted via HMAC-\nKeccak on the client side.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.cryptonite)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-form)
          (hsPkgs.yesod-auth)
          (hsPkgs.yesod-static)
          (hsPkgs.yesod-persistent)
          (hsPkgs.persistent)
          (hsPkgs.random)
          (hsPkgs.mtl)
          (hsPkgs.shakespeare)
        ];
      };
    };
  }