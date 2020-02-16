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
      specVersion = "1.12";
      identifier = { name = "icepeak"; version = "0.7.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2020, Channable";
      maintainer = "rkrzr";
      author = "Channable";
      homepage = "https://github.com/channable/icepeak";
      url = "";
      synopsis = "A fast JSON document store with push notification support.";
      description = "Icepeak is a fast JSON document store with push notification support.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."jwt" or (buildDepError "jwt"))
          (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."prometheus-client" or (buildDepError "prometheus-client"))
          (hsPkgs."prometheus-metrics-ghc" or (buildDepError "prometheus-metrics-ghc"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."raven-haskell" or (buildDepError "raven-haskell"))
          (hsPkgs."scotty" or (buildDepError "scotty"))
          (hsPkgs."securemem" or (buildDepError "securemem"))
          (hsPkgs."sqlite-simple" or (buildDepError "sqlite-simple"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          (hsPkgs."wai-middleware-prometheus" or (buildDepError "wai-middleware-prometheus"))
          (hsPkgs."wai-websockets" or (buildDepError "wai-websockets"))
          (hsPkgs."warp" or (buildDepError "warp"))
          (hsPkgs."websockets" or (buildDepError "websockets"))
          ];
        buildable = true;
        };
      exes = {
        "icepeak" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."icepeak" or (buildDepError "icepeak"))
            (hsPkgs."jwt" or (buildDepError "jwt"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."prometheus-client" or (buildDepError "prometheus-client"))
            (hsPkgs."prometheus-metrics-ghc" or (buildDepError "prometheus-metrics-ghc"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."raven-haskell" or (buildDepError "raven-haskell"))
            (hsPkgs."scotty" or (buildDepError "scotty"))
            (hsPkgs."securemem" or (buildDepError "securemem"))
            (hsPkgs."sqlite-simple" or (buildDepError "sqlite-simple"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."wai-middleware-prometheus" or (buildDepError "wai-middleware-prometheus"))
            (hsPkgs."wai-websockets" or (buildDepError "wai-websockets"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."websockets" or (buildDepError "websockets"))
            ];
          buildable = true;
          };
        "icepeak-token-gen" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."icepeak" or (buildDepError "icepeak"))
            (hsPkgs."jwt" or (buildDepError "jwt"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."prometheus-client" or (buildDepError "prometheus-client"))
            (hsPkgs."prometheus-metrics-ghc" or (buildDepError "prometheus-metrics-ghc"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."raven-haskell" or (buildDepError "raven-haskell"))
            (hsPkgs."scotty" or (buildDepError "scotty"))
            (hsPkgs."securemem" or (buildDepError "securemem"))
            (hsPkgs."sqlite-simple" or (buildDepError "sqlite-simple"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."wai-middleware-prometheus" or (buildDepError "wai-middleware-prometheus"))
            (hsPkgs."wai-websockets" or (buildDepError "wai-websockets"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."websockets" or (buildDepError "websockets"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-core" or (buildDepError "hspec-core"))
            (hsPkgs."hspec-expectations" or (buildDepError "hspec-expectations"))
            (hsPkgs."hspec-wai" or (buildDepError "hspec-wai"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."icepeak" or (buildDepError "icepeak"))
            (hsPkgs."jwt" or (buildDepError "jwt"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."prometheus-client" or (buildDepError "prometheus-client"))
            (hsPkgs."prometheus-metrics-ghc" or (buildDepError "prometheus-metrics-ghc"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."raven-haskell" or (buildDepError "raven-haskell"))
            (hsPkgs."scotty" or (buildDepError "scotty"))
            (hsPkgs."securemem" or (buildDepError "securemem"))
            (hsPkgs."sqlite-simple" or (buildDepError "sqlite-simple"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."wai-middleware-prometheus" or (buildDepError "wai-middleware-prometheus"))
            (hsPkgs."wai-websockets" or (buildDepError "wai-websockets"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."websockets" or (buildDepError "websockets"))
            ];
          buildable = true;
          };
        };
      };
    }