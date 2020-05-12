{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "crypto-classical"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "colin@fosskers.ca";
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."crypto-numbers" or (errorHandler.buildDepError "crypto-numbers"))
          (hsPkgs."crypto-random" or (errorHandler.buildDepError "crypto-random"))
          (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
          (hsPkgs."modular-arithmetic" or (errorHandler.buildDepError "modular-arithmetic"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "crypto-classical-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."crypto-classical" or (errorHandler.buildDepError "crypto-classical"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }