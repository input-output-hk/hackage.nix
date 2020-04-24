{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "crypto-classical"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "colingw@gmail.com";
      author = "Colin Woodbury";
      homepage = "https://github.com/fosskers/crypto-classical";
      url = "";
      synopsis = "An educational tool for studying classical cryptography schemes.";
      description = "An educational tool for studying classical cryptography\nschemes. Do not encrypt anything of worth with this\nlibrary.\n\n/Included Ciphers:/\n\n* Caesar\n\n* Affine (Linear)\n\n* Substitution\n\n* Stream\n\n* Vigenere\n\n* Enigma (Wehrmacht Enigma I)\n\nThanks to polymorphism, we can generate keys and encrypt\nByteStrings without worrying much about types:\n\n> > import Crypto.Classical\n> > import Lens.Micro\n> > :set -XOverloadedStrings\n> > (\\k -> encrypt k \"What a great day for an attack!\" ^. enigma) . key <\$> prng\n> \"PXQS D KXSGB CFC AYK XJ DEGMON!\"\n> > (\\k -> encrypt k \"What a great day for an attack!\" ^. caesar) . key <\$> prng\n> \"RCVO V BMZVO YVT AJM VI VOOVXF!\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."crypto-numbers" or ((hsPkgs.pkgs-errors).buildDepError "crypto-numbers"))
          (hsPkgs."crypto-random" or ((hsPkgs.pkgs-errors).buildDepError "crypto-random"))
          (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
          (hsPkgs."microlens-th" or ((hsPkgs.pkgs-errors).buildDepError "microlens-th"))
          (hsPkgs."modular-arithmetic" or ((hsPkgs.pkgs-errors).buildDepError "modular-arithmetic"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }