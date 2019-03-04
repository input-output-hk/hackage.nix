{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9";
      identifier = { name = "eccrypto"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Marcel Fourné, 2009-2019";
      maintainer = "Marcel Fourné (haskell@marcelfourne.de)";
      author = "Marcel Fourné";
      homepage = "";
      url = "";
      synopsis = "Elliptic Curve Cryptography for Haskell";
      description = "Elliptic Curve Cryptography in Haskell, evolved for correctness and practical usability from higher-level libraries.\n\nThe implementation is pure Haskell and as generic and fast as reasonably possible. Timing-attack resistance is important, failure must be documented.\n\nThis library was formerly known and its code originated as hecc, but since this would imply Hyperelliptic ECC, the name was changed.\n\nAlso the scope was changed by selecting best internal formats and no longer trying to be overly general, allowing more optimizations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.crypto-api)
          (hsPkgs.integer-gmp)
          (hsPkgs.SHA)
          ];
        };
      tests = {
        "eccrypto-testsuite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.eccrypto)
            ];
          };
        };
      benchmarks = {
        "eccrypto-benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.eccrypto)
            (hsPkgs.MonadRandom)
            ];
          };
        };
      };
    }