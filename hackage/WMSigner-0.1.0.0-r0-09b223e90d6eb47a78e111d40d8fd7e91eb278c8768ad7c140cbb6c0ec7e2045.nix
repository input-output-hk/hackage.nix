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
      specVersion = "1.8";
      identifier = {
        name = "WMSigner";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Ilya Smelkov <triplepointfive@gmail.com>";
      maintainer = "Ilya Smelkov <triplepointfive@gmail.com>";
      author = "Ilya Smelkov <triplepointfive@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "WebMoney authentication module";
      description = "Pure haskell implementation WMSigner authentication module.\n\nSimple examples:\n\n> import Data.Digest.Webmoney\n>\n> signer = newSigner (exponent :: [Word8) (modulus :: [Word8])\n>\n> main = do\n>   putStrLn \$ signUnsafe signer \"message\" -- static version\n>   sign signer \"message\" >>= putStrLn     -- randomized version";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.cryptohash)
          (hsPkgs.random)
          (hsPkgs.vector)
          (hsPkgs.base64-bytestring)
          (hsPkgs.binary)
          (hsPkgs.random)
          (hsPkgs.mtl)
          (hsPkgs.split)
          (hsPkgs.lens)
        ];
      };
      tests = {
        "test-WMSigner" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.bytestring)
            (hsPkgs.split)
            (hsPkgs.cryptohash)
            (hsPkgs.random)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }