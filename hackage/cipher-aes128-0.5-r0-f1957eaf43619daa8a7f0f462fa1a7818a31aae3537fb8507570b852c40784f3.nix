{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "cipher-aes128"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "Thomas M. DuBuisson";
      maintainer = "thomas.dubuisson@gmail.com";
      author = "Thomas M. DuBuisson, Vincent Hanquez (See AUTHORS file)";
      homepage = "https://github.com/TomMD/cipher-aes128";
      url = "";
      synopsis = "AES128 using AES-NI when available.";
      description = "AES128 with crypto-api instances and a trampoline between Vincent Hanquez's\nC-based and x86 NI-based AES.  Patches welcome to add additional\nhigh-performance backends (ARM?)";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."crypto-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-api"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          ];
        buildable = true;
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."crypto-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-api"))
            (hsPkgs."entropy" or ((hsPkgs.pkgs-errors).buildDepError "entropy"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            ];
          buildable = true;
          };
        };
      };
    }