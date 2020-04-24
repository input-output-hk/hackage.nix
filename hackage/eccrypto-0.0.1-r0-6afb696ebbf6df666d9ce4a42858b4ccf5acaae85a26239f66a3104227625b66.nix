{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9";
      identifier = { name = "eccrypto"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Marcel Fourné, 2009-2016";
      maintainer = "Marcel Fourné (haskell@marcelfourne.de)";
      author = "Marcel Fourné";
      homepage = "";
      url = "";
      synopsis = "Elliptic Curve Cryptography for Haskell";
      description = "Elliptic Curve Cryptography in Haskell, evolved for correctness and practical usability from higher-level libraries.\n\nThe implementation is pure Haskell and as generic and fast as reasonably possible. Timing-attack resistance is important, failure must be documented.\n\nThis library was formerly known and its code originated as hecc, but since this would imply Hyperelliptic ECC, the name was changed.\n\nAlso the scope was changed by selecting best internal formats and no longer trying to be overly general, allowing more optimizations.\n\nN.B.: F2 is faulty and slow.\n\nMore secure curves will be added.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."SHA" or ((hsPkgs.pkgs-errors).buildDepError "SHA"))
          (hsPkgs."crypto-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-api"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }