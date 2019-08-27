let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "apotiki"; version = "0.5.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "pyr@spootnik.org";
      author = "Pierre-Yves Ritschard";
      homepage = "https://github.com/pyr/apotiki";
      url = "";
      synopsis = "a faster debian repository";
      description = "apotiki generates debian repositories fast. its goal is\nto be a great companion to fpm and jenkins.\n\napotiki operates with the following features and constraints:\n\n- Supports a single debian release\n\n- Supports a single debian component\n\n- Supports an arbitrary number of architectures which need to be preprovisionned\n\n- Requires a valid PGP private key for signing";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."tar" or (buildDepError "tar"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."openpgp-asciiarmor" or (buildDepError "openpgp-asciiarmor"))
          (hsPkgs."openpgp-crypto-api" or (buildDepError "openpgp-crypto-api"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."openpgp" or (buildDepError "openpgp"))
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."scotty" or (buildDepError "scotty"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."wai-middleware-static" or (buildDepError "wai-middleware-static"))
          ];
        };
      exes = {
        "apotiki" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."openpgp-asciiarmor" or (buildDepError "openpgp-asciiarmor"))
            (hsPkgs."openpgp-crypto-api" or (buildDepError "openpgp-crypto-api"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."openpgp" or (buildDepError "openpgp"))
            (hsPkgs."strict" or (buildDepError "strict"))
            (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."scotty" or (buildDepError "scotty"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."wai-middleware-static" or (buildDepError "wai-middleware-static"))
            ];
          };
        };
      };
    }