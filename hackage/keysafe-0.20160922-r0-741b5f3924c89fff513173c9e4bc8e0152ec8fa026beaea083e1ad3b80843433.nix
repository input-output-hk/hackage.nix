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
      specVersion = "1.8";
      identifier = { name = "keysafe"; version = "0.20160922"; };
      license = "AGPL-3.0-only";
      copyright = "2016 Joey Hess";
      maintainer = "Joey Hess <joey@kitenet.net>";
      author = "Joey Hess";
      homepage = "https://joeyh.name/code/keysafe/";
      url = "";
      synopsis = "back up a secret key securely to the cloud";
      description = "Keysafe backs up a secret key to several cloud servers, split up\nso that no one server can access the whole secret by itself.\n\nA password is used to encrypt the data, and it is made expensive\nto decrypt, so password cracking is infeasibly expensive.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "keysafe" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."secret-sharing" or (buildDepError "secret-sharing"))
            (hsPkgs."raaz" or (buildDepError "raaz"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."readline" or (buildDepError "readline"))
            (hsPkgs."zxcvbn-c" or (buildDepError "zxcvbn-c"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."servant-server" or (buildDepError "servant-server"))
            (hsPkgs."servant-client" or (buildDepError "servant-client"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."socks" or (buildDepError "socks"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."token-bucket" or (buildDepError "token-bucket"))
            (hsPkgs."bloomfilter" or (buildDepError "bloomfilter"))
            (hsPkgs."disk-free-space" or (buildDepError "disk-free-space"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."unbounded-delays" or (buildDepError "unbounded-delays"))
            (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
            (hsPkgs."SafeSemaphore" or (buildDepError "SafeSemaphore"))
            (hsPkgs."crypto-random" or (buildDepError "crypto-random"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            ];
          libs = [ (pkgs."argon2" or (sysDepError "argon2")) ];
          };
        };
      };
    }