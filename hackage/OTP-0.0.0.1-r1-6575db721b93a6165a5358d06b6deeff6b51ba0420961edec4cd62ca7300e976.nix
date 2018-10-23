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
        name = "OTP";
        version = "0.0.0.1";
      };
      license = "MIT";
      copyright = "(c) 2012 Artem Leshchev";
      maintainer = "hvr@gnu.org";
      author = "Artem Leshchev";
      homepage = "https://github.com/hvr/OTP";
      url = "";
      synopsis = "HMAC-Based and Time-Based One-Time Passwords";
      description = "Implements HMAC-Based One-Time Password Algorithm as defined in RFC 4226 and Time-Based One-Time Password Algorithm as defined in RFC 6238.";
      buildType = "Simple";
    };
    components = {
      "OTP" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Crypto)
          (hsPkgs.time)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Crypto)
            (hsPkgs.time)
          ];
        };
      };
    };
  }