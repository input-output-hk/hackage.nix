{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "crypto-random-api";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-crypto-random-api";
      url = "";
      synopsis = "Simple random generators API for cryptography related code";
      description = "Simple random generators API for cryptography related code";
      buildType = "Simple";
    };
    components = {
      "crypto-random-api" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.entropy)
        ];
      };
    };
  }