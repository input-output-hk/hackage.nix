{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "ecdsa";
        version = "0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2014 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "https://github.com/singpolyma/ecdsa-haskell";
      url = "";
      synopsis = "Basic ECDSA signing implementation";
      description = "Wraps the stuff in hecc to do ECDSA.";
      buildType = "Simple";
    };
    components = {
      "ecdsa" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.hecc)
          (hsPkgs.crypto-pubkey-types)
          (hsPkgs.crypto-api)
        ];
      };
    };
  }