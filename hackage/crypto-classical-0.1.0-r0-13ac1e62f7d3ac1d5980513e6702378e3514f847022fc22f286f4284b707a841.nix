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
      specVersion = "1.10";
      identifier = { name = "crypto-classical"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "colingw@gmail.com";
      author = "Colin Woodbury";
      homepage = "https://github.com/fosskers/crypto-classical";
      url = "";
      synopsis = "An educational tool for studying classical cryptography schemes.";
      description = "An educational tool for studying classical cryptography\nschemes. Do not encrypt anything of worth with this\nlibrary.\n\n/Included Ciphers:/\n\n* Caesar\n\n* Affine (Linear)\n\n* Substitution\n\n* Stream\n\n* Vigenere\n\n* Enigma (Wehrmacht Enigma I)\n\nThanks to polymorphism, we can generate keys and encrypt\nByteStrings without worrying much about types:\n\n> > import Crypto.Classical\n> > import Control.Lens\n> > :set -XOverloadedStrings\n> > (key <$> prng) >>= \\k -> return (encrypt k \"What a great day for an attack!\" ^. enigma)\n> \"PXQS D KXSGB CFC AYK XJ DEGMON!\"\n> > (key <$> prng) >>= \\k -> return (encrypt k \"What a great day for an attack!\" ^. caesar)\n> \"RCVO V BMZVO YVT AJM VI VOOVXF!\"";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."crypto-numbers" or (errorHandler.buildDepError "crypto-numbers"))
          (hsPkgs."crypto-random" or (errorHandler.buildDepError "crypto-random"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."modular-arithmetic" or (errorHandler.buildDepError "modular-arithmetic"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }