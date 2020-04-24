{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cprng-aes-effect"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "tob@butter.sh";
      author = "Tobias Florek";
      homepage = "https://github.com/ibotty/crypto-random-effect";
      url = "";
      synopsis = "Run random effect using cprng-aes, a crypto pseudo number generator.";
      description = "Any help (especially documentation) is welcome";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cprng-aes" or ((hsPkgs.pkgs-errors).buildDepError "cprng-aes"))
          (hsPkgs."crypto-random" or ((hsPkgs.pkgs-errors).buildDepError "crypto-random"))
          (hsPkgs."crypto-random-effect" or ((hsPkgs.pkgs-errors).buildDepError "crypto-random-effect"))
          (hsPkgs."extensible-effects" or ((hsPkgs.pkgs-errors).buildDepError "extensible-effects"))
          ];
        buildable = true;
        };
      };
    }