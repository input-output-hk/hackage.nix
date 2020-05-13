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
    flags = { fast-bignum = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "HsOpenSSL"; version = "0.10.3.4"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho at cielonegro dot org>";
      author = "Adam Langley, Mikhail Vorozhtsov, PHO, Taru Karttunen";
      homepage = "https://github.com/phonohawk/HsOpenSSL";
      url = "";
      synopsis = "Partial OpenSSL binding for Haskell";
      description = "\nHsOpenSSL is an OpenSSL binding for Haskell. It can generate RSA\nand DSA keys, read and write PEM files, generate message digests,\nsign and verify messages, encrypt and decrypt messages. It has\nalso some capabilities of creating SSL clients and servers.\n\nThis package is in production use by a number of Haskell based\nsystems and stable. You may also be interested in the @tls@ package,\n<http://hackage.haskell.org/package/tls>, which is a pure Haskell\nimplementation of SSL.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ] ++ (pkgs.lib).optionals (flags.fast-bignum) (if compiler.isGhc && (compiler.version).ge "6.11"
          then [
            (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
            ]
          else [
            (hsPkgs."integer" or (errorHandler.buildDepError "integer"))
            ]);
        libs = if system.isWindows
          then [
            (pkgs."eay32" or (errorHandler.sysDepError "eay32"))
            (pkgs."ssl32" or (errorHandler.sysDepError "ssl32"))
            ]
          else [
            (pkgs."crypto" or (errorHandler.sysDepError "crypto"))
            (pkgs."ssl" or (errorHandler.sysDepError "ssl"))
            ];
        buildable = true;
        };
      };
    }