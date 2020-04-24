{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "HsOpenSSL"; version = "0.10"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho at cielonegro dot org>";
      author = "Adam Langley <agl at imperialviolet dot org>,\nPHO <pho at cielonegro dot org>,\nTaru Karttunen <taruti at taruti dot net>";
      homepage = "http://cielonegro.org/HsOpenSSL.html";
      url = "";
      synopsis = "(Incomplete) OpenSSL binding for Haskell";
      description = "HsOpenSSL is an (incomplete) OpenSSL binding for Haskell. It\ncan generate RSA and DSA keys, read and write PEM files,\ngenerate message digests, sign and verify messages, encrypt\nand decrypt messages.";
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