{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "Twofish"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ron.leisti@gmail.com";
      author = "Ron Leisti";
      homepage = "http://github.com/rleisti/twofish";
      url = "";
      synopsis = "An implementation of the Twofish Symmetric-key cipher.";
      description = "Implements the Twofish symmetric block cipher, designed by:\nBruce Schneier, John Kelsey, Doug Whiting, David Wagner, Chris Hall,\nand Niels Ferguson.\n\nAs well, this module includes some generic definitions for\nciphers and cipher-block-chaining mode in the Data.Cipher\nmodule.  In the future, these should probably either be\nmoved to their own package, or all of this should be merged\ninto the Crypto package.\n\nAcknowledgments:\n\nDominic Steinitz, Caylee Hogg and Thomas DuBuisson for their work\non the Crypto package, upon which this package depends.\n\nStephen Tetley for his advice and code examples provided on\nthe Haskell-Beginners mailing list in response to a question\nI had, which helped me to create a transformer version of the\nCbc monad. (now deprecated in favor of the CBC definitions in\ncrypto-api)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."crypto-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-api"))
          (hsPkgs."largeword" or ((hsPkgs.pkgs-errors).buildDepError "largeword"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          ];
        buildable = true;
        };
      tests = {
        "Standard-Tests" = {
          depends = [
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."crypto-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-api"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."largeword" or ((hsPkgs.pkgs-errors).buildDepError "largeword"))
            (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
            ];
          buildable = true;
          };
        };
      };
    }