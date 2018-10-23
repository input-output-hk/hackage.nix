{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.0.0";
      identifier = {
        name = "mucipher";
        version = "0.5.0";
      };
      license = "LicenseRef-GPL";
      copyright = "2008 Andrew Robbins";
      maintainer = "Andrew Robbins <and_j_rob@yahoo.com>";
      author = "Andrew Robbins <and_j_rob@yahoo.com>";
      homepage = "";
      url = "";
      synopsis = "A library to produce simple ciphers for use with lambdabot.";
      description = "To use MuCipher, first import Codec.MuCipher, then pick something to say.\nThen use showCipher or printCipher to see how to hide the message.\nAfter the message is ciphered, it can be deciphered by running it\nany Haskell interpreter, like Hugs or lambdabot.";
      buildType = "Simple";
    };
    components = {
      "mucipher" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }