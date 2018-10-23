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
        name = "hecc";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Marcel Fourné, 2009-2013";
      maintainer = "Marcel Fourné (hecc@bitrot.dyndns.org)";
      author = "Marcel Fourné";
      homepage = "";
      url = "";
      synopsis = "Elliptic Curve Cryptography for Haskell";
      description = "Pure math & algorithms for Elliptic Curve Cryptography in Haskell";
      buildType = "Simple";
    };
    components = {
      "hecc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cereal)
          (hsPkgs.crypto-api)
          (hsPkgs.hF2)
        ];
      };
    };
  }