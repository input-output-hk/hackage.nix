{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hoauth";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Diego Souza <dsouza@bitforest.org>";
      author = "Diego Souza";
      homepage = "";
      url = "";
      synopsis = "A Haskell implementation of OAuth 1.0a protocol.";
      description = "This library implements all PLAINTEXT, HMAC-SHA1 and RSA-SHA1\nsignatures as defined in the specification 1.0. Currently it\nsupports only /consumer/ related functions, but there are plans to\nadd support /service providers/ as well.\nMore info at: <http://oauth.net/>";
      buildType = "Simple";
    };
    components = {
      "hoauth" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.SHA)
          (hsPkgs.RSA)
          (hsPkgs.base64-string)
          (hsPkgs.utf8-string)
        ];
      };
      exes = {
        "test_hoauth" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.SHA)
            (hsPkgs.RSA)
            (hsPkgs.base64-string)
            (hsPkgs.utf8-string)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }