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
    flags = { debug = false; solidity = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "web3"; version = "0.8.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Alexander Krupenkin 2016";
      maintainer = "mail@akru.me";
      author = "Alexander Krupenkin";
      homepage = "https://github.com/airalab/hs-web3#readme";
      url = "";
      synopsis = "Ethereum API for Haskell";
      description = "Web3 is a Haskell client library for Ethereum";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."OneTuple" or (buildDepError "OneTuple"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."basement" or (buildDepError "basement"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."generics-sop" or (buildDepError "generics-sop"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."machines" or (buildDepError "machines"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."microlens-aeson" or (buildDepError "microlens-aeson"))
          (hsPkgs."microlens-mtl" or (buildDepError "microlens-mtl"))
          (hsPkgs."microlens-th" or (buildDepError "microlens-th"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."relapse" or (buildDepError "relapse"))
          (hsPkgs."secp256k1-haskell" or (buildDepError "secp256k1-haskell"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."vinyl" or (buildDepError "vinyl"))
          ] ++ (pkgs.lib).optional (flags.solidity) (hsPkgs."containers" or (buildDepError "containers"));
        libs = (pkgs.lib).optional (flags.solidity) (pkgs."solidity" or (sysDepError "solidity"));
        };
      tests = {
        "live" = {
          depends = [
            (hsPkgs."OneTuple" or (buildDepError "OneTuple"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."basement" or (buildDepError "basement"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."generics-sop" or (buildDepError "generics-sop"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-contrib" or (buildDepError "hspec-contrib"))
            (hsPkgs."hspec-discover" or (buildDepError "hspec-discover"))
            (hsPkgs."hspec-expectations" or (buildDepError "hspec-expectations"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."machines" or (buildDepError "machines"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."microlens-aeson" or (buildDepError "microlens-aeson"))
            (hsPkgs."microlens-mtl" or (buildDepError "microlens-mtl"))
            (hsPkgs."microlens-th" or (buildDepError "microlens-th"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."relapse" or (buildDepError "relapse"))
            (hsPkgs."secp256k1-haskell" or (buildDepError "secp256k1-haskell"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vinyl" or (buildDepError "vinyl"))
            (hsPkgs."web3" or (buildDepError "web3"))
            ];
          };
        "unit" = {
          depends = [
            (hsPkgs."OneTuple" or (buildDepError "OneTuple"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."basement" or (buildDepError "basement"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."generics-sop" or (buildDepError "generics-sop"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-contrib" or (buildDepError "hspec-contrib"))
            (hsPkgs."hspec-discover" or (buildDepError "hspec-discover"))
            (hsPkgs."hspec-expectations" or (buildDepError "hspec-expectations"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."machines" or (buildDepError "machines"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."microlens-aeson" or (buildDepError "microlens-aeson"))
            (hsPkgs."microlens-mtl" or (buildDepError "microlens-mtl"))
            (hsPkgs."microlens-th" or (buildDepError "microlens-th"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."relapse" or (buildDepError "relapse"))
            (hsPkgs."secp256k1-haskell" or (buildDepError "secp256k1-haskell"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vinyl" or (buildDepError "vinyl"))
            (hsPkgs."web3" or (buildDepError "web3"))
            ];
          };
        };
      };
    }