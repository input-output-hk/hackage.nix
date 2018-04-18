{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.9";
        identifier = {
          name = "hecc";
          version = "0.4.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Marcel Fourné, 2009-2013";
        maintainer = "Marcel Fourné (mail@marcelfourne.de)";
        author = "Marcel Fourné";
        homepage = "";
        url = "";
        synopsis = "Elliptic Curve Cryptography for Haskell";
        description = "Pure math & algorithms for Elliptic Curve Cryptography in Haskell.\nThe implementation should be timing-attack resistant, pure Haskell and reasonably fast.";
        buildType = "Simple";
      };
      components = {
        hecc = {
          depends  = [
            hsPkgs.base
            hsPkgs.cereal
            hsPkgs.crypto-api
            hsPkgs.hF2
          ];
        };
      };
    }