{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "crypto-classical";
        version = "0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "colingw@gmail.com";
      author = "Colin Woodbury";
      homepage = "https://github.com/fosskers/crypto-classical";
      url = "";
      synopsis = "An educational tool for studying classical cryptography schemes.";
      description = "An educational tool for studying classical cryptography\nschemes. Do not encrypt anything of worth with this\nlibrary.\n\n/Included Ciphers:/\n\n* Caesar\n\n* Affine (Linear)\n\n* Substitution\n\n* Stream\n\n* Vigenere\n\n* Enigma (Wehrmacht Enigma I)\n\nThanks to polymorphism, we can generate keys and encrypt\nByteStrings without worrying much about types:\n\n> > import Crypto.Classical\n> > import Control.Lens\n> > :set -XOverloadedStrings\n> > (key <\$> prng) >>= \\k -> return (encrypt k \"What a great day for an attack!\" ^. enigma)\n> \"PXQS D KXSGB CFC AYK XJ DEGMON!\"\n> > (key <\$> prng) >>= \\k -> return (encrypt k \"What a great day for an attack!\" ^. caesar)\n> \"RCVO V BMZVO YVT AJM VI VOOVXF!\"";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.crypto-numbers)
          (hsPkgs.crypto-random)
          (hsPkgs.lens)
          (hsPkgs.modular-arithmetic)
          (hsPkgs.random)
          (hsPkgs.random-shuffle)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
    };
  }