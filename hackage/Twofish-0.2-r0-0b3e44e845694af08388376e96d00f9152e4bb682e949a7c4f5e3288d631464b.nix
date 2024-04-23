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
      specVersion = "1.2";
      identifier = { name = "Twofish"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ron.leisti@gmail.com";
      author = "Ron Leisti";
      homepage = "";
      url = "";
      synopsis = "An implementation of the Twofish Symmetric-key cipher.";
      description = "Implements the Twofish symmetric block cipher, designed by:\nBruce Schneier, John Kelsey, Doug Whiting, David Wagner, Chris Hall,\nand Niels Ferguson.\n\nAs well, this module includes some generic definitions for\nciphers and cipher-block-chaining mode in the Data.Cipher\nmodule.  In the future, these should probably either be\nmoved to their own package, or all of this should be merged\ninto the Crypto package.\n\nAcknowledgments:\n\nDominic Steinitz and Creighton Hogg for their work on the Crypto\npackage, upon which this package depends (particularily for the\nData.LargeWord module).\n\nStephen Tetley for his advice and code examples provided on\nthe Haskell-Beginners mailing list in response to a question\nI had, which helped me to create a transformer version of the Cbc monad.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Crypto" or (errorHandler.buildDepError "Crypto"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      exes = { "Test" = { buildable = true; }; };
    };
  }