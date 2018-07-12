{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hecc";
          version = "0.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Marcel Fourné, 2009-2012";
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
            hsPkgs.base
            hsPkgs.crypto-api
            hsPkgs.hF2
          ];
        };
      };
    }