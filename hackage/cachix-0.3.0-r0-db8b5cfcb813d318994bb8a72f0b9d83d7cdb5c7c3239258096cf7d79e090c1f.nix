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
      specVersion = "2.2";
      identifier = { name = "cachix"; version = "0.3.0"; };
      license = "Apache-2.0";
      copyright = "2018 Domen Kožar";
      maintainer = "domen@enlambda.com";
      author = "Domen Kožar";
      homepage = "https://github.com/cachix/cachix#readme";
      url = "";
      synopsis = "Command line client for Nix binary cache hosting https://cachix.org";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cachix-api" or (buildDepError "cachix-api"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cookie" or (buildDepError "cookie"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."dhall" or (buildDepError "dhall"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."ed25519" or (buildDepError "ed25519"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
          (hsPkgs."here" or (buildDepError "here"))
          (hsPkgs."hnix-store-core" or (buildDepError "hnix-store-core"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."inline-c" or (buildDepError "inline-c"))
          (hsPkgs."inline-c-cpp" or (buildDepError "inline-c-cpp"))
          (hsPkgs."lzma-conduit" or (buildDepError "lzma-conduit"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."mmorph" or (buildDepError "mmorph"))
          (hsPkgs."netrc" or (buildDepError "netrc"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."protolude" or (buildDepError "protolude"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."retry" or (buildDepError "retry"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."servant-auth" or (buildDepError "servant-auth"))
          (hsPkgs."servant-auth-client" or (buildDepError "servant-auth-client"))
          (hsPkgs."servant-client" or (buildDepError "servant-client"))
          (hsPkgs."servant-client-core" or (buildDepError "servant-client-core"))
          (hsPkgs."servant-conduit" or (buildDepError "servant-conduit"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."uri-bytestring" or (buildDepError "uri-bytestring"))
          (hsPkgs."versions" or (buildDepError "versions"))
          ];
        libs = [ (pkgs."stdc++" or (sysDepError "stdc++")) ];
        pkgconfig = [
          (pkgconfPkgs."nix-store" or (pkgConfDepError "nix-store"))
          (pkgconfPkgs."nix-main" or (pkgConfDepError "nix-main"))
          ];
        };
      exes = {
        "cachix" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cachix" or (buildDepError "cachix"))
            (hsPkgs."cachix-api" or (buildDepError "cachix-api"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (buildToolDepError "hspec-discover")))
            ];
          };
        };
      tests = {
        "cachix-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cachix" or (buildDepError "cachix"))
            (hsPkgs."cachix-api" or (buildDepError "cachix-api"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."here" or (buildDepError "here"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            ];
          };
        };
      };
    }