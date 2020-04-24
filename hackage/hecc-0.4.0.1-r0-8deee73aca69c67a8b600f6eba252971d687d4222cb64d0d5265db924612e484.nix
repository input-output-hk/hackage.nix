{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hecc"; version = "0.4.0.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."crypto-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-api"))
          (hsPkgs."hF2" or ((hsPkgs.pkgs-errors).buildDepError "hF2"))
          ];
        buildable = true;
        };
      };
    }