{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "HsOpenSSL"; version = "0.10.1.4"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho at cielonegro dot org>";
      author = "Adam Langley, Mikhail Vorozhtsov, PHO, Taru Karttunen";
      homepage = "https://github.com/phonohawk/HsOpenSSL";
      url = "";
      synopsis = "(Incomplete) OpenSSL binding for Haskell";
      description = "\nHsOpenSSL is an OpenSSL binding for Haskell. It can generate RSA\nand DSA keys, read and write PEM files, generate message digests,\nsign and verify messages, encrypt and decrypt messages. It has\nalso some capabilities of creating SSL clients and servers.\n\nPlease note that this project has started at the time when there\nwere no pure-Haskell implementations of TLS. Now there is tls\npackage (<http://hackage.haskell.org/package/tls>), which looks\npretty saner than HsOpenSSL especially for initialisation and\nerror handlings. So PHO (the initial author of HsOpenSSL) highly\nencourages you to use and improve the tls package instead as long\nas possible.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "6.11"
          then [
            (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"))
            ]
          else [
            (hsPkgs."integer" or ((hsPkgs.pkgs-errors).buildDepError "integer"))
            ]);
        libs = if system.isWindows
          then [
            (pkgs."eay32" or ((hsPkgs.pkgs-errors).sysDepError "eay32"))
            (pkgs."ssl32" or ((hsPkgs.pkgs-errors).sysDepError "ssl32"))
            ]
          else [
            (pkgs."crypto" or ((hsPkgs.pkgs-errors).sysDepError "crypto"))
            (pkgs."ssl" or ((hsPkgs.pkgs-errors).sysDepError "ssl"))
            ];
        buildable = true;
        };
      };
    }