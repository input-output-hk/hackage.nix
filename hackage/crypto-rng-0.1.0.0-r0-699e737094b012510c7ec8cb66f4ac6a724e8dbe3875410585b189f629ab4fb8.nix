{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "crypto-rng"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Scrive AB";
      maintainer = "Mikhail Glushenkov <mikhail.glushenkov@scrive.com>,\nJonathan Jouty <jonathan@scrive.com>";
      author = "Scrive AB";
      homepage = "https://github.com/scrive/crypto-rng";
      url = "";
      synopsis = "Cryptographic random number generator.";
      description = "Convenient wrapper for the cryptographic random generator\nprovided by the DRBG package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.DRBG)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.crypto-api)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.transformers-base)
          ];
        };
      };
    }