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
    flags = {
      reference = false;
      force-endianness = false;
      big-endian = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "skein"; version = "0.1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa <felipe.lessa@gmail.com>, Doug Whiting";
      homepage = "";
      url = "";
      synopsis = "Skein, a family of cryptographic hash functions.  Includes Skein-MAC as well.";
      description = "Skein (<http://www.skein-hash.info/>) is a family of fast\nsecure cryptographic hash functions designed by Niels\nFerguson, Stefan Lucks, Bruce Schneier, Doug Whiting, Mihir\nBellare, Tadayoshi Kohno, Jon Callas and Jesse Walker.\n\nThis package uses bindings to the optimized C implementation\nof Skein.  We provide a high-level interface (see module\n\"Crypto.Skein\") to some of the Skein use cases.  We also\nprovide a low-level interface (see module\n\"Crypto.Skein.Internal\") should you need to use Skein in a\ndifferent way.\n\nCurrently we have support for Skein as cryptographic hash\nfunction as Skein as a message authentication code\n(Skein-MAC).  For examples of how to use this package, see\n\"Crypto.Skein\" module documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "runtests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."skein" or (errorHandler.buildDepError "skein"))
            ];
          buildable = true;
          };
        };
      };
    }