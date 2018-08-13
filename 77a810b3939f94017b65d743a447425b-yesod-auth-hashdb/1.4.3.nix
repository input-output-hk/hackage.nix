{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8.0";
      identifier = {
        name = "yesod-auth-hashdb";
        version = "1.4.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Paul Rouse <pyr@doynton.org>";
      author = "Patrick Brisbin, later changes Paul Rouse";
      homepage = "https://github.com/paul-rouse/yesod-auth-hashdb";
      url = "";
      synopsis = "Authentication plugin for Yesod.";
      description = "This package is the Yesod.Auth.HashDB plugin, originally included as part\nof yesod-auth, but now modified to be more secure and placed in a separate\npackage.\n\nIt provides authentication using hashed passwords stored in a database,\nand works best in situations where an administrator is involved in\nsetting up a user with an initial password.\n\nThe complete login process, including a default form, is implemented by\nthis plugin, but the application developer must design the interfaces\nfor setting up users and allowing them to change their own passwords,\nsince only the low-level password-setting functions are provided by this\npackage.  (Note that other authentication plugins may be more appropriate\nif you wish to use email verification to set up accounts).";
      buildType = "Simple";
    };
    components = {
      "yesod-auth-hashdb" = {
        depends  = [
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
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.yesod-auth-hashdb)
            (hsPkgs.hspec)
            (hsPkgs.text)
          ];
        };
      };
    };
  }